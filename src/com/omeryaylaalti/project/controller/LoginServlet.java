package com.omeryaylaalti.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omeryaylaalti.project.dao.UsersDAO;
import com.omeryaylaalti.project.dao.YetkiDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("username");
		String password = request.getParameter("pass");
		
		try {
			if (YetkiDAO.getId(name) == 1) {
				response.sendRedirect("AdminPaneli.jsp");
			} else {
				if (UsersDAO.HibernatekullaniciVarmi(name, password)==true) {
					System.out.println("Doğru");
					response.sendRedirect("e-belediye.jsp");
					 HttpSession session=request.getSession();  
				     session.setAttribute("name",name); 
				} else {
					System.out.println("Yanlış");
					response.sendRedirect("login.jsp");
				}
			}

		} finally {
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
