package com.omeryaylaalti.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.omeryaylaalti.project.HibernateUtil.HibernateUtil;
import com.omeryaylaalti.project.model.UyeEkle;

/**
 * Servlet implementation class UyeOlServlet
 */
@WebServlet("/UyeOlServlet")
public class UyeOlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UyeOlServlet() {
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
		response.setContentType("text/html");
		Session session = HibernateUtil.getSessionFactory().openSession();
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String repass = request.getParameter("confirmPassword");
		String phone = request.getParameter("phoneNumber");
		int kod = Integer.parseInt(request.getParameter("captcha"));

		try {
			session.beginTransaction();
			out.println("Inserting Record");
			UyeEkle uyeEkle = new UyeEkle();
			uyeEkle.setUsername(username);
			uyeEkle.setEmail(email);
			uyeEkle.setPass(pass);
			uyeEkle.setRepass(repass);
			uyeEkle.setPhone(phone);
			session.save(uyeEkle);
			session.getTransaction().commit();
			out.println("Done");
		} catch (

		Exception e)

		{
			System.err.println(e.getMessage());
		} finally

		{

			session.flush();
			session.close();
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
