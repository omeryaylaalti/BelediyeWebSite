package com.omeryaylaalti.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.BelediyeCalisanlarDAO;

/**
 * Servlet implementation class CalisanGuncelleServlet
 */
@WebServlet("/calisanGuncelle")
public class CalisanGuncelleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalisanGuncelleServlet() {
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
		String calisanid = request.getParameter("calisanid");
		String calisanname = request.getParameter("calisanname");
		String calisanbirim = request.getParameter("calisanbirim");
		String calisanil = request.getParameter("calisanil");
		String calisantc = request.getParameter("calisantc");
		String calisanaciklama = request.getParameter("calisanaciklama");
		int durum = new BelediyeCalisanlarDAO().calisanGuncelle(Integer.parseInt(calisanid), calisanname, calisanbirim,
				calisanil, calisantc, calisanaciklama);
		response.sendRedirect("calisanlariGoruntule.jsp");
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
