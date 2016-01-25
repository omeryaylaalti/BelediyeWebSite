package com.omeryaylaalti.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omeryaylaalti.project.dao.DugunSalonuSecimDAO;

/**
 * Servlet implementation class DugunSalonuServlet
 */
@WebServlet("/dugunsalonusecimi")
public class DugunSalonuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DugunSalonuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String dugunsalonuname = request.getParameter("dugunsalonu");
		String dugundate = request.getParameter("date");
		String kiralayanname = request.getParameter("kiralayanname");
		String duguncomment = request.getParameter("comment");
		DugunSalonuSecimDAO dao = new DugunSalonuSecimDAO();
		dao.DugunRandevuEkle(dugundate, dugunsalonuname, kiralayanname, duguncomment);
		response.sendRedirect("e-belediye.jsp");
		String mesaj = "Kaydınız başarıyla oluşturulmuştur.";
		HttpSession session = request.getSession();  
	    session.setAttribute("mesaj",mesaj); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
