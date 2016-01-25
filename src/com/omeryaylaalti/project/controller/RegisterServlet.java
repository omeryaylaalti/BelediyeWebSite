package com.omeryaylaalti.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.UsersDAO;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		String email = request.getParameter("email");
		String kod = request.getParameter("kod");
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String koddogrula = request.getParameter("dogrulakod");
		String password = request.getParameter("pass");
		String tckimlikno = request.getParameter("tckimlikno");
		System.out.println(kod);
		System.out.println(koddogrula);
		System.out.println(email);
		System.out.println(name);
		System.out.println(tckimlikno);
		System.out.println(username);
		System.out.println(password);
		
		if (koddogrula == kod) {
			UsersDAO.kullaniciEkle(name, username, email, password, tckimlikno);
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("registererror.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * OnlineErisimDAO dao = new OnlineErisimDAO();
		 * dao.kullaniciEkle(request.getParameter("name"), "omer",
		 * "omer@hotmail.com", "123", "0536 331 29 00", "123")
		 */;
	}

}
