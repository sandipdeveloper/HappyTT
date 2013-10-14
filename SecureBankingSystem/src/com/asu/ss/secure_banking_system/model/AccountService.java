package com.asu.ss.secure_banking_system.model;

import org.hibernate.HibernateException;
import org.hibernate.Session;



public class AccountService {

	private String accountID;
	private AccountEntity accEntity;
	private String userID;

	/**
	 * @return the accountID
	 */
	
	
	public String getAccountID() {
		return accountID;
	}

	/**
	 * @param accountID the accountID to set
	 */
	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}


	/**
	 * @return the userID
	 */
	public String getUserID() {
		return userID;
	}

	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		this.userID = userID;
	}


	public AccountEntity getAccountDetails(String accountID)
	{
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		try
		{
			session.beginTransaction();
			this.accEntity = (AccountEntity)session.get(AccountEntity.class, accountID);

		}
		catch(HibernateException  e)
		{
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		
		return this.accEntity;
	}
	/* updates the balance  */
	public AccountEntity updateBalance(String accountID,double tranAmount,char typeOfUpdate)
	{
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		try
		{
			session.beginTransaction();
			this.accEntity = (AccountEntity)session.get(AccountEntity.class, accountID);

		}
		catch(HibernateException  e)
		{
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		double availableBalance = 0.0;

		if(typeOfUpdate == 'C')
		{
			availableBalance = accEntity.getAcctBalance() + tranAmount;
		}
		else if(typeOfUpdate == 'D')
		{
			availableBalance = accEntity.getAcctBalance() - tranAmount;
			if(availableBalance < 0.00)
			{
				/*throw error here. */
			}

		}
		accEntity.setAcctBalance(availableBalance);

		return accEntity;

	}
}
