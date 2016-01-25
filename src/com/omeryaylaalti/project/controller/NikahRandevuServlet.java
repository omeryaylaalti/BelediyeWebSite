package com.omeryaylaalti.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omeryaylaalti.project.dao.NikahRandevuDAO;
import com.omeryaylaalti.project.service.SendMail;

/**
 * Servlet implementation class NikahRandevuServlet
 */
@WebServlet("/nikahEkle")
public class NikahRandevuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NikahRandevuServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		String time = request.getParameter("time");
		String erkekName = request.getParameter("erkekname");
		String bayanName = request.getParameter("bayanname");
		String erkektcKimlikNo = request.getParameter("erkektc");
		String bayantcKimlikNo = request.getParameter("bayantc");
		String email = request.getParameter("email");
		
		if(NikahRandevuDAO.rezervasyonVarmi(sonTarih , time ) == true){
			String mesaj = "Bu tarih ve saatte rezervasyon yapılmıştır.Tarih-Saat bilgisini güncelleyiniz.";
			HttpSession session = request.getSession();  
		    session.setAttribute("saatmesaji", mesaj); 
		    response.sendRedirect("errorsaat.jsp");
		}else{
			try {
				NikahRandevuDAO.NikahEkle(sonTarih, time, erkekName, bayanName, erkektcKimlikNo, bayantcKimlikNo, email);
				String mesaj = "Rezervasyon kayıt işlemi başarıyla yapılmıştır.Lütfen mail kutunuzu kontrol ediniz!";
				HttpSession session = request.getSession();  
			    session.setAttribute("mesaj", mesaj);
			    SendMail mail = new SendMail();
			    String mesajicerik = "Rezervasyon Tarihi ve Saati :" + sonTarih +" "+ time +"\n" + "Erkek İsim-Soyisim :" + erkekName + "\n"+
			    "Bayan İsim-Soyisim :" + bayanName + "\n" + "Lütfen belediyeye nikah için ödeme yapmayı unutmayınız.";
			    mail.Gonder(email, "Nikah Rezervasyon Kaydı", mesajicerik);
				response.sendRedirect("adminNikahTarihSorgula.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
