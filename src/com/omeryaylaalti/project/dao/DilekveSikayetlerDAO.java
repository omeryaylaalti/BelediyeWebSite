package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.omeryaylaalti.project.imp.persistence.PersistenceServiceImpl;
import com.omeryaylaalti.project.model.DilekveSikayetler;
import com.omeryaylaalti.project.model.DugunSalonuSecimi;
import com.omeryaylaalti.project.service.PersistenceService;

public class DilekveSikayetlerDAO {
	public static void main(String[] args){
		DilekveSikayetlerDAO dao = new DilekveSikayetlerDAO();
		dao.sikayetEkle("Temizlik Hizmetleri", "Çevre Temizlemesi Yeterince yapılmıyor.");
	}

	public void sikayetEkle(String sikayetsubject, String sikayetcomment){
		PersistenceService persistenceService = new PersistenceServiceImpl();
		DilekveSikayetler sikayet = new DilekveSikayetler();
		sikayet.setSikayetsubject(sikayetsubject);
		sikayet.setSikayetcomment(sikayetcomment);
		persistenceService.save(sikayet);
	}
	
	public void DilekveSikayetEkle(String sikayetsubject, String sikayetcomment){
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String sql = "INSERT INTO dilekvesikayetler (sikayetsubject,sikayetcomment) values (?,?)";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setString(1, sikayetsubject);
			statement.setString(2, sikayetcomment);
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
	
	public DilekveSikayetler getirId(String id) {
		DilekveSikayetler r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from dilekvesikayetler where sikayetid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				r = new DilekveSikayetler(rs.getInt("sikayetid"), rs.getString("sikayetsubject"),rs.getString("sikayetcomment"));
				System.out.println(r);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;

	}
	
	public int dilekvesikayetSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM dilekvesikayetler where sikayetid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public int sikayetDuzenle(int sikayetid, String sikayetsubject,String sikayetcomment) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "UPDATE dilekvesikayetler SET  sikayetsubject=?, sikayetcomment=? where sikayetid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, sikayetsubject);
			psmt.setString(2, sikayetcomment);
			psmt.setInt(3,sikayetid);
			return psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public  int  sikayetSayi(){
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
			ResultSet rs = psmt.executeQuery("Select count(*) from dilekvesikayetler");

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
