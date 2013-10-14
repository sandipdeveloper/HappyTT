package com.asu.ss.secure_banking_system.servlet;


import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
//import org.apache.catalina.Session;
import org.hibernate.Transaction;

import com.asu.ss.secure_banking_system.model.AccountEntity;
import com.asu.ss.secure_banking_system.model.SessionFactoryUtil;

/**
 * Servlet implementation class DebitAndCreditServlet
 */
@WebServlet("/DebitAndCreditServlet")
public class DebitAndCreditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DebitAndCreditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#getServletConfig()
	 */
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null; 
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.print("success");
		
		String account = request.getParameter("accountNo");
		System.out.println("account number = "+account);
		
		double amount = Double.valueOf(request.getParameter("amount"));
		System.out.println("amount = "+amount);
		
		
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction tx = null;
		AccountEntity accEnt;
		
		try {
			tx = session.beginTransaction();
			accEnt = new AccountEntity();
			
			accEnt.setAccountID("account2");
			accEnt.setAcctName("Software Sec2");
			accEnt.setUserID("user2");
			accEnt.setAcctBalance(3000);
			System.out.println("check here");
			session.save(accEnt);
			
			tx.commit();
			
		}
		catch(Exception e)
		{
			tx.rollback();
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}
		
		
		
		
		
		
	}

}
