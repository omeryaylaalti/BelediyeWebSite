package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.omeryaylaalti.project.model.BelediyeBirim;
import com.omeryaylaalti.project.model.BelediyeCalisanlar;

public class BelediyeCalisanlarDAO {

	public static void main(String[] args) {
		BelediyeCalisanlarDAO dao = new BelediyeCalisanlarDAO();
		//dao.calisanEkle(2, "Ömer Yaylaaltı", "Başkan Yrd.", "Çankırı", "10616005368", "Özel durum yoktur.");
		//dao.getirId("1");
		//dao.calisanGuncelle(1, "Ömer Yaylaaltı", "Başkan Yrd.", "İstanbul", "10616005368", "İstanbulda oturmaktadır.");
		
	}

	public void calisanEkle(int id, String calisanName, String calisanBirim, String calisanIl, String calisanTc,
			String calisanAciklama) {
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String sql = "INSERT INTO belediyecalisanlar (calisanid, calisanname, calisanil,calisanbirim, calisantc, calisancomment) values (?,?,?,?,?,?)";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setInt(1, id);
			statement.setString(2, calisanName);
			statement.setString(3, calisanBirim);
			statement.setString(4, calisanIl);
			statement.setString(5, calisanTc);
			statement.setString(6, calisanAciklama);
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

	public BelediyeCalisanlar getirId(String id) {
		BelediyeCalisanlar r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from belediyecalisanlar where calisanid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				r = new BelediyeCalisanlar(rs.getInt("calisanid"), rs.getString("calisanname"), rs.getString("calisanil"),
						rs.getString("calisanbirim"), rs.getString("calisantc"), rs.getString("calisancomment"));
				System.out.println(r);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}
	
	public int CalisanSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM belediyecalisanlar where calisanid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public int calisanGuncelle(int calisanid, String calisanname,String calisanbirim,String calisanil,String calisantc,String calisanaciklama) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "UPDATE belediyecalisanlar SET  calisanname=?, calisanbirim=?, calisanil=?, calisantc=?, calisancomment=? where calisanid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, calisanname);
			psmt.setString(2, calisanbirim);
			psmt.setString(3, calisanil);
			psmt.setString(4, calisantc);
			psmt.setString(5, calisanaciklama);
			psmt.setInt(6, calisanid);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public  int  calisanSayi(){
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
			ResultSet rs = psmt.executeQuery("Select count(*) from belediyecalisanlar");

			while (rs.next()) {
				rowCount = rs.getInt(1);
			    System.out.println(rowCount);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount;
		
		
	}

}
