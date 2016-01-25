package com.omeryaylaalti.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omeryaylaalti.project.dao.DugunSalonuSecimDAO;

/**
 * Servlet implementation class DugunSalonuRandevuGuncelleServlet
 */
@WebServlet("/dugunRandevuGuncelle")
public class DugunSalonuRandevuGuncelleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DugunSalonuRandevuGuncelleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String dugunid= request.getParameter("dugunid");
		String dugundate= request.getParameter("dugundate");
		String dugunsalonuname= request.getParameter("dugunsalonuname");
		String kiralayanname = request.getParameter("kiralayanname");
		String duguncomment = request.getParameter("duguncomment");
		DugunSalonuSecimDAO dao = new DugunSalonuSecimDAO();
		dao.dugunDuzenle(Integer.parseInt(dugunid), dugundate, dugunsalonuname, kiralayanname, duguncomment);
		response.sendRedirect("adminDugunRandevuGoruntule.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
