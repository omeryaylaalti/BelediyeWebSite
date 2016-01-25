package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import com.omeryaylaalti.project.imp.persistence.PersistenceServiceImpl;
import com.omeryaylaalti.project.model.Users;
import com.omeryaylaalti.project.service.PersistenceService;

public class UsersDAO {
	static PersistenceService persistenceService = new PersistenceServiceImpl();
	public static void main(String[] args){
		UsersDAO dao = new UsersDAO();
	}
	public static void kullaniciEkle(String name, String username, String email, String password, String phone) {
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String sql = "INSERT INTO Users (username, email, name, pass, phone) values (?,?,?,?,?)";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, email);
			statement.setString(3, name);
			statement.setString(4, password);
			statement.setString(5, phone);
			// sends the statement to the database server
			int row = statement.executeUpdate();

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
	
	public Users getirId(String id) {
		Users r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from users where id=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				r = new Users(rs.getInt("id"), rs.getString("name"), rs.getString("username"),
						rs.getString("email"), rs.getString("pass"), rs.getString("phone"));
				System.out.println(r);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}

	public static boolean HibernatekullaniciVarmi(String username, String password) {

		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			try {
				Class.forName(JDBC_DRIVER);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "select reg.username,reg.pass from Users as reg where reg.username='" + username
					+ "' and reg.pass='" + password + "'";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(query);
			ResultSet row = statement.executeQuery();
			if(row.next()){
				return true;
			}else
				return false;
		}
			
			catch (SQLException ex) {
				ex.printStackTrace();
			}
		 finally
	{
		try {

			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
		return false;
}
	public int kullaniciSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM Users where id=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public int kullaniciGuncelle(int userid, String name,String username,String email,String pass,String phone) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "UPDATE users SET  name=?, username=?, email=?, pass=?, phone=? where id=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, name);
			psmt.setString(2, username);
			psmt.setString(3, email);
			psmt.setString(4, pass);
			psmt.setString(5, phone);
			psmt.setInt(6, userid);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public  int  kullaniciSayi(){
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
			ResultSet rs = psmt.executeQuery("Select count(*) from users");

			while (rs.next()) {
				rowCount = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount;
		
		
	}

}
