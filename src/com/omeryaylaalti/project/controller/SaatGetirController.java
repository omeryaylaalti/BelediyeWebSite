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
 * Servlet implementation class SaatGetirController
 */
@WebServlet("/tarihSorgu")
public class SaatGetirController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaatGetirController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date = request.getParameter("date");
		String[] parts = date.split("/");
		String gun = parts[0];
		String ay = parts[1];
		String yil = parts[2];
		Character a = parts[0].charAt(0);
		String gun1 = String.valueOf(parts[0].charAt(1));
		Character b = parts[1].charAt(0);
		String ay1 = String.valueOf(parts[1].charAt(1));
		String newDate = "";
		String sonTarih = "";
		if (a == '0' && b == '0') {
			sonTarih = newDate.concat(gun1 + "/" + ay1 + "/" + yil);
		} else if (a == '0') {
			sonTarih = newDate.concat(gun1 + "/" + ay + "/" + yil);
		} else if (b == '0') {
			sonTarih = newDate.concat(gun + "/" + ay1 + "/" + yil);
		} else {
			sonTarih = newDate.concat(gun + "/" + ay + "/" + yil);
		}
		System.out.println(sonTarih);
		Vector v = new Vector(NikahRandevuDAO.SaatGetir(sonTarih));
		HttpSession session=request.getSession();  
	    session.setAttribute("saat",NikahRandevuDAO.SaatGetir(sonTarih)); 
	    session.setAttribute("date",date);
		response.sendRedirect("adminNikahRandevuYap.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
