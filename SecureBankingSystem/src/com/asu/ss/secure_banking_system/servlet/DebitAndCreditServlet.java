package com.asu.ss.secure_banking_system.servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
import com.asu.ss.secure_banking_system.model.TranConfResult;
import com.asu.ss.secure_banking_system.model.TransferService;
import com.asu.ss.secure_banking_system.model.TypeOfTransfer;;

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
		request.removeAttribute("exception");
		
		TypeOfTransfer transferInd = null;
		RequestDispatcher rd = request.getRequestDispatcher("webpages/resultPage.jsp");
		String account = request.getParameter("accountNo");
		System.out.println("account number = "+account);
		
		double amount = Double.valueOf(request.getParameter("amount"));
		System.out.println("amount = "+amount);
		
		String pageInd = request.getParameter("pageInd");
		System.out.println("Page = "+pageInd);
		
		if(pageInd.equalsIgnoreCase("credit"))
			transferInd = TypeOfTransfer.CREDIT;
		else if(pageInd.equalsIgnoreCase("debit"))
			transferInd = TypeOfTransfer.DEBIT;
		try {	
		
		//AccountEntity accEnt;
		TranConfResult tranConfResult;
		TransferService transferService = new TransferService(account,transferInd, amount, "SATYA1");
		transferService.DebitOrCreditAccount();
		tranConfResult = transferService.getTranConfResult();
		request.setAttribute("tranConfResult", tranConfResult);
		rd.forward(request, response);
		}
		catch(Exception e)
		{
			request.setAttribute("exception", e.getMessage());
			System.out.println("exception occered satya : "+e.getMessage());
			if(transferInd == TypeOfTransfer.CREDIT)
				request.getRequestDispatcher("webpages/credit.jsp").forward(request, response);
			else if(transferInd == TypeOfTransfer.DEBIT)
				request.getRequestDispatcher("webpages/Debit.jsp").forward(request, response);
		}
		
		/*try {*/
			/*tx = session.beginTransaction();
			accEnt = new AccountEntity();
			
			accEnt.setAccountID("account2");
			accEnt.setAcctName("Software Sec2");
			accEnt.setUserID("user2");
			accEnt.setAcctBalance(3000);
			System.out.println("check here");
			session.save(accEnt);
			
			tx.commit();*/
			
		/*}
		catch(Exception e)
		{
			tx.rollback();
			e.printStackTrace();
		}
		finally
		{
			session.close();
		}*/
		
		
		
		
		
		
	}

}
