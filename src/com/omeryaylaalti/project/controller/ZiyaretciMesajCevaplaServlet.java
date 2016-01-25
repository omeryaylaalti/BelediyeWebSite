package com.omeryaylaalti.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.UsersDAO;
import com.omeryaylaalti.project.service.SendMail;

/**
 * Servlet implementation class ZiyaretciMesajCevaplaServlet
 */
@WebServlet("/mesajGonder")
public class ZiyaretciMesajCevaplaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZiyaretciMesajCevaplaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String gonderenemail = request.getParameter("gonderenemail");
		String mesajkonu = request.getParameter("mesajkonu");
		String mesajicerik = request.getParameter("mesajicerik");
		SendMail mail = new SendMail();
		mail.Gonder(gonderenemail, mesajkonu, mesajicerik);
		response.sendRedirect("adminGelenMesajlar.jsp");	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
