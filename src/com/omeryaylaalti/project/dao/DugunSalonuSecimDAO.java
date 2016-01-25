package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.omeryaylaalti.project.imp.persistence.PersistenceServiceImpl;
import com.omeryaylaalti.project.model.BelediyeBirim;
import com.omeryaylaalti.project.model.DugunSalonuSecimi;
import com.omeryaylaalti.project.service.PersistenceService;

public class DugunSalonuSecimDAO {

	public static void main(String[] args) {
		//DugunRandevuEkle("11/12/2016", "Saçak Beldesi Sosyal Tesisleri", "Ömer Yaylaaltı", "Özel bir durumdur.");
		DugunSalonuSecimDAO dao = new DugunSalonuSecimDAO();
		dao.getirId("2");
		dao.dugunDuzenle(2, "11/11/2017", "Saçak Beldesi Sosyal Tesisleri", "Ömer Yaylaaltı", "Özel");
		dao.getirId("2");
	}

	public static void DugunEkle(String dugundate, String dugunsalonuname, String kiralayanname, String duguncomment) {
		PersistenceService persistenceService = new PersistenceServiceImpl();
		DugunSalonuSecimi dugun = new DugunSalonuSecimi();
		dugun.setDugundate(dugundate);
		dugun.setDugunsalonuname(dugunsalonuname);
		dugun.setKiralayanname(kiralayanname);
		dugun.setDuguncomment(duguncomment);
		persistenceService.save(dugun);
	}

	public static void DugunRandevuEkle(String dugundate, String dugunsalonuname, String kiralayanname,
			String duguncomment) {
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String sql = "INSERT INTO dugunsalonusecimi (dugundate,dugunsalonuname,kiralayanname,duguncomment) values (?,?,?,?)";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setString(1, dugundate);
			statement.setString(2, dugunsalonuname);
			statement.setString(3, kiralayanname);
			statement.setString(4, duguncomment);
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

	public DugunSalonuSecimi getirId(String id) {
		DugunSalonuSecimi r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from dugunsalonusecimi where dugunid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				r = new DugunSalonuSecimi(rs.getInt("dugunid"), rs.getString("dugundate"),
						rs.getString("dugunsalonuname"), rs.getString("kiralayanname"), rs.getString("duguncomment"));
				System.out.println(r);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;

	}
	
	public int dugunSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM dugunsalonusecimi where dugunid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public int dugunDuzenle(int dugunid, String dugundate,String dugunsalonuname,String kiralayanname,String duguncomment) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "UPDATE dugunsalonusecimi SET  dugundate=?, dugunsalonuname=?, kiralayanname=?, duguncomment=? where dugunid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, dugundate);
			psmt.setString(2, dugunsalonuname);
			psmt.setString(3, kiralayanname);
			psmt.setString(4, duguncomment);
			psmt.setInt(5,dugunid);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public  int  dugunSayi(){
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
			ResultSet rs = psmt.executeQuery("Select count(*) from dugunsalonusecimi");

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
