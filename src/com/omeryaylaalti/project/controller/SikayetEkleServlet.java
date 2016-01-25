package com.omeryaylaalti.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omeryaylaalti.project.dao.DilekveSikayetlerDAO;

/**
 * Servlet implementation class SikayetEkleServlet
 */
@WebServlet("/SikayetEkleServlet")
public class SikayetEkleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SikayetEkleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String konu = request.getParameter("sikayetsubject");
		String aciklama = request.getParameter("sikayetcomment");
		DilekveSikayetlerDAO dao = new DilekveSikayetlerDAO();
		dao.DilekveSikayetEkle(konu, aciklama);
		response.sendRedirect("e-belediye.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
