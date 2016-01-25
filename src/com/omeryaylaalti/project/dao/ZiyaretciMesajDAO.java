package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.omeryaylaalti.project.model.BelediyeBirim;
import com.omeryaylaalti.project.model.ZiyaretciMesajlar;

public class ZiyaretciMesajDAO {
	public static void main(String[] args) {
	//mesajEkle("Ömer Yaylaaltı", "omer_y.34@hotmail.com", "Mesaj içeriği buraya yazılacaktır.", "Mesaj");
	ZiyaretciMesajDAO dao = new ZiyaretciMesajDAO();
	dao.getirId("2");
	
	}

	// public static void mesajEkle(int mesajid,String gonderenname, String
	// gonderenemail,String mesajicerik,String mesajkonu){
	// PersistenceService persistenceService = new PersistenceServiceImpl();
	// ZiyaretciMesajlar mesaj = new ZiyaretciMesajlar();
	// mesaj.setGonderenname(gonderenname);
	// mesaj.setGonderenemail(gonderenemail);
	// mesaj.setMesajicerik(mesajicerik);
	// mesaj.setMesajkonu(mesajkonu);
	// persistenceService.save(mesaj);
	// }

	public static void mesajEkle(String gonderenname, String gonderenemail, String mesajicerik, String mesajkonu) {
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String sql = "INSERT INTO ziyaretcimesaj (gonderenname, gonderenemail,mesajicerik,mesajkonu) values (?,?,?,?)";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setString(1, gonderenname);
			statement.setString(2, gonderenemail);
			statement.setString(3, mesajicerik);
			statement.setString(4, mesajkonu);
			// sends the statement to the database server
			int row = statement.executeUpdate();
			System.out.println("Kayıt İşlemi Başarıyla Yapıldı.");
		} catch (SQLException ex) {

			ex.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {

			try {

				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}
	
	public ZiyaretciMesajlar getirId(String id) {
		ZiyaretciMesajlar r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from ziyaretcimesaj where mesajid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				r = new ZiyaretciMesajlar(rs.getInt("mesajid"),rs.getString("gonderenname") ,rs.getString("gonderenemail") , rs.getString("mesajicerik"), rs.getString("mesajkonu"));
				System.out.println(r);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
		
	}
	
	public int mesajSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM ziyaretcimesaj where mesajid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public  int  mesajSayi(){
		Connection conn = null;
		Integer rowCount =null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			Statement psmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
				        ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = psmt.executeQuery("Select count(*) from ziyaretcimesaj");

			while (rs.next()) {
				rowCount = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount;
		
		
	}


}
