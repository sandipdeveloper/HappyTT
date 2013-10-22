package com.asu.ss.secure_banking_system.model;

import java.security.SecureRandom;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.asu.ss.secure_banking_system.model.SessionFactoryUtil;



public class OneTimePasswd {
	
	private String userId;
	
	
	public OneTimePasswd(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String  generateOTP()
	{
		String chars = "abcdefghijklmnopqrstuvwxyz"
                + "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789";

		final int PW_LENGTH = 6;
		Random rnd = new SecureRandom();
		StringBuilder pass = new StringBuilder();
		for (int i = 0; i < PW_LENGTH; i++)
			pass.append(chars.charAt(rnd.nextInt(chars.length())));
		
		return pass.toString();		
	}
	public void insertOTPCodeForUser() throws Exception
	{
		String otpCode = generateOTP();
		
		OTPKey otpKey = new OTPKey(userId,otpCode);
		OneTimePasswordEntity otpEntity = new OneTimePasswordEntity();
		otpEntity.setOtpGeneratedDate(new Date());
		otpEntity.setOtpKey(otpKey);
		
		String customerEmailID;
		/*Configuration configuration = new Configuration();
		configuration.configure();
		serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
		sessionFactory = configuration.buildSessionFactory(serviceRegistry);*/
		
		Transaction tx = null;
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		//Session session = SessionFactoryUtil.getSessionFactory().getCurrentSession();
		try
		{
			tx = session.beginTransaction();
			
			String sqlStmnt = "delete from OneTimePasswordEntity where user_id = :userId";
			Query query = session.createQuery(sqlStmnt);
			query.setParameter("userId", userId);
			int result = query.executeUpdate();
			System.out.println("No of Rows affected after delete : "+result);
		
			session.save(otpEntity);
			tx.commit();
		}
		catch(Exception e)
		{
			if(tx!=null)	tx.rollback();
			e.printStackTrace();
			throw e;
		}
		finally
		{
			session.close();
		}
		
		String message = "Dear Customer,\n\n" + "Your OTP password is "+otpCode+"\n This will expire in 5 mins";
		
		/*get the profile details here from user ID to get the email address for the user*/
		OTPMailAPI.sendMail("kale.santu@gmail.com", "OTP Code for transaction", message);
		
	}
	public void checkTheUserEnteredOTPCode(String otpCode) throws Exception
	{
		Transaction tx = null;
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		//Session session = SessionFactoryUtil.getSessionFactory().getCurrentSession();
		try
		{
			tx = session.beginTransaction();
			String sqlStmnt = "SELECT otpGeneratedDate from OneTimePasswordEntity  where user_id = :userId and otp_code = :otpCode";
			Query qry = session.createQuery(sqlStmnt);
		//qry.addEntity(OneTimePasswordEntity.class);
			qry.setParameter("userId", userId);
			qry.setParameter("otpCode", otpCode);
			List<Date> results = qry.list();
			System.out.println("no. pf rows returned are :"+results.size());
			Date currDate = new Date();
			Date fetchedDate = (Date)results.get(0);
		
			long dateDiff = 0;
			System.out.println("current Date = ["+currDate+"]");
			System.out.println("fetched Date = ["+fetchedDate+"]");
			dateDiff = currDate.getTime() - fetchedDate.getTime();
			System.out.println("Time lag = "+dateDiff);
			if(dateDiff > 200000)
			{
				System.out.println("OTP expired");
				throw new Exception("OTP expired or invalid!!!");
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			throw e;
		}
		finally
		{
			session.close();
		}
		
	}
	
	
	/*public static void main(String args[]) {
		
		
		OneTimePasswd otp = new OneTimePasswd("SATYA");
		
		
		otp.insertOTPCodeForUser(otpCode);
		
		otp.checkTheUserEnteredOTPCode(otpCode);
		
	}*/
}
