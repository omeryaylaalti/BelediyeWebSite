package com.omeryaylaalti.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.HaberEkleDAO;

/**
 * Servlet implementation class HaberGuncelleServlet
 */
@WebServlet("/haberGuncelle")
public class HaberGuncelleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HaberGuncelleServlet() {
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
		String id = request.getParameter("haberid");
		String haberdate = request.getParameter("haberdate");
		String habername = request.getParameter("habername");
		String habercomment = request.getParameter("habercomment");
		HaberEkleDAO dao = new HaberEkleDAO();
		dao.haberGuncelle(Integer.parseInt(id), haberdate, habername, habercomment);
		response.sendRedirect("adminHaberleriGoruntule.jsp");
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
