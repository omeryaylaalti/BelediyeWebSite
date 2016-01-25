package com.omeryaylaalti.project.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omeryaylaalti.project.service.SendMail;

/**
 * Servlet implementation class KayıtEmailDogrulaServlet
 */
@WebServlet("/EmailDogrula")
public class KayıtEmailDogrulaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KayıtEmailDogrulaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String email = request.getParameter("email");
		String mesajkonu = "E_mail Doğrulama Kontrolü";
		Random ran = new Random();
		int top = 2;
		char data = ' ';
		String dat = "";

		for (int i=0; i<=top; i++) {
		  data = (char)(ran.nextInt(25)+97);
		  dat = data + dat;
		}
		 String dat1 = dat.toUpperCase().substring(1);
		 String dat2 = dat.toUpperCase().substring(2);
		 int sayi2 = ran.nextInt(10);
		 int sayi3 = ran.nextInt(10);
		 String random = dat1+String.valueOf(sayi2)+dat2+String.valueOf(sayi3);
		 HttpSession session=request.getSession(true);  
	     session.setAttribute("random",random); 
	     session.setAttribute("email", email);
		 String mesajicerik= "Doğrulama Kodu : "+ random ;
		 SendMail mail = new SendMail();
		 mail.Gonder(email, mesajkonu, mesajicerik);
		 response.sendRedirect("register.jsp");
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
