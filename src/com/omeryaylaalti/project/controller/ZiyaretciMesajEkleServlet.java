package com.omeryaylaalti.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.BelediyeBirimDAO;
import com.omeryaylaalti.project.dao.ZiyaretciMesajDAO;

/**
 * Servlet implementation class ZiyaretciMesajEkleServlet
 */
@WebServlet("/ZiyaretciMesajEkle")
public class ZiyaretciMesajEkleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZiyaretciMesajEkleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String gonderenname= request.getParameter("gonderenname");
		String gonderenemail = request.getParameter("gonderenemail");
		String mesajkonu= request.getParameter("mesajkonu");
		String mesajicerik = request.getParameter("mesajicerik");
		ZiyaretciMesajDAO.mesajEkle(gonderenname, gonderenemail, mesajicerik, mesajkonu);
		response.sendRedirect("AnasayfaEkrani.jsp");	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
