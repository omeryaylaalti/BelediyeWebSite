package com.omeryaylaalti.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.BelediyeBirimDAO;
import com.omeryaylaalti.project.dao.HaberEkleDAO;

/**
 * Servlet implementation class HaberEkleServlet
 */
@WebServlet("/haberekleme")
public class HaberEkleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HaberEkleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String ad= request.getParameter("name");
		HaberEkleDAO dao = new HaberEkleDAO();
		int haberid = Integer.parseInt(request.getParameter("haberid"));
		byte[] haberphoto = dao.resimEkle4();
		String haberdate = request.getParameter("haberdate");
		String habername= request.getParameter("habername");
		String habercomment = request.getParameter("habercomment");
		dao.HaberEkleDB(haberid, haberphoto, haberdate,habername, habercomment);
		response.sendRedirect("adminHaberleriGoruntule.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
