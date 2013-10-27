package com.asu.ss.secure_banking_system.servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.asu.ss.secure_banking_system.model.RoleRequestEntity;
import com.asu.ss.secure_banking_system.service.RoleAssignmentService;

/**
 * Servlet implementation class RoleRequestValidation
 */
@WebServlet("/RoleRequestValidation")
public class RoleRequestValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoleRequestValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		HttpSession session = request.getSession();
		RoleRequestEntity re = (RoleRequestEntity)session.getAttribute("RoleRequestToValidate");
		RoleAssignmentService resvc = new RoleAssignmentService();
		if(resvc.isValidRequest(re))
			session.setAttribute("isValidRequest", true);
		else
			session.setAttribute("isValidRequest", false);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/webpages/assign_role.jsp");
		rd.forward(request, response);
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
	}

}
