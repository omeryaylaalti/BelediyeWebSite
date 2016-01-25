package com.omeryaylaalti.project.controller;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omeryaylaalti.project.dao.NikahRandevuDAO;

/**
 * Servlet implementation class BelediyeNikahTarihSorgulaServlet
 */
@WebServlet("/kullanicitarihSorgu")
public class BelediyeNikahTarihSorgulaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BelediyeNikahTarihSorgulaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date = request.getParameter("tarih");
		Vector v = new Vector(NikahRandevuDAO.SaatGetir(date));
		HttpSession session=request.getSession();  
	    session.setAttribute("saat",NikahRandevuDAO.SaatGetir(date)); 
	    session.setAttribute("date",date);
		response.sendRedirect("http://localhost:8080/SacakBelediyesi/e-belediye.jsp#nikahrandevu");	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
