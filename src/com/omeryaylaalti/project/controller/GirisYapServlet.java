package com.omeryaylaalti.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.omeryaylaalti.project.HibernateUtil.HibernateUtil;
import com.omeryaylaalti.project.model.Kullanicilar;

/**
 * Servlet implementation class GirisYapServlet
 */
@WebServlet("/GirisYapServlet")
public class GirisYapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher dispatcher;
	public static String email, pass;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GirisYapServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Session session = HibernateUtil.getSessionFactory().openSession();
		response.setContentType("text/html;charset=UTF-8");
		
		email = request.getParameter("email");
		pass = request.getParameter("password");
		session.beginTransaction();

		/*if (email == "" && pass == "") {
			request.getRequestDispatcher("/Anasayfa.jsp").forward(request, response);
		} else if (email == k.getEmail() && pass == k.getPassword()) {

			request.getRequestDispatcher("/AdminPaneli.jsp").forward(request, response);
		}
		
		session.getTransaction().commit();
	
		session.close();*/
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
