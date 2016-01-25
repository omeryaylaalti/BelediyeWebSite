package com.omeryaylaalti.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.BelediyeCalisanlarDAO;
import com.omeryaylaalti.project.dao.NikahRandevuDAO;

/**
 * Servlet implementation class NikahRandevuGüncelleServlet
 */
@WebServlet("/nikahGuncelle")
public class NikahRandevuGüncelleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NikahRandevuGüncelleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String nikahid = request.getParameter("nikahid");
		String nikahdate = request.getParameter("nikahdate");
		String nikahtime = request.getParameter("nikahtime");
		String erkekname = request.getParameter("erkekname");
		String bayanname = request.getParameter("bayanname");
		String erkektckimlik = request.getParameter("erkektckimlik");
		String bayantckimlik = request.getParameter("bayantckimlik");
		String email = request.getParameter("email");
		NikahRandevuDAO dao = new NikahRandevuDAO();
		dao.nikahGuncelle(Integer.parseInt(nikahid), nikahdate, nikahtime, erkekname, bayanname, erkektckimlik, bayantckimlik, email);
		response.sendRedirect("adminNikahRezervasyonGoruntule.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
