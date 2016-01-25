package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.tool.schema.extract.spi.ExtractionContext.DatabaseObjectAccess;

import com.omeryaylaalti.project.model.BelediyeBirim;

public class BelediyeBirimDAO {

	public static void main(String[] args) {
		// birimEkle(2, "Çevre Düzenleme Müdürlüğü");
		 BelediyeBirimDAO dao = new BelediyeBirimDAO();
		 dao.getirId("2");
		// dao.birimDuzenle(1, "Çevre Düzenleme Müdürlüğü");
	}

	public static void birimEkle(int id, String ad) {
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String sql = "INSERT INTO belediyebirim (birimid, birimname) values (?,?)";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setInt(1, id);
			statement.setString(2, ad);
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

	public BelediyeBirim getirId(String id) {
		BelediyeBirim r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from belediyebirim where birimid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				r = new BelediyeBirim(rs.getInt("birimid"), rs.getString("birimname"));
				System.out.println(r);
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
		
	}

	public List<BelediyeBirim> getirTumListe() {
		List<BelediyeBirim> r = new ArrayList<BelediyeBirim>();
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "Select * from belediyebirim";
			PreparedStatement psmt = conn.prepareStatement(query);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				BelediyeBirim reh = new BelediyeBirim(rs.getInt("id"), rs.getString("name"));
				r.add(reh);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}

	public int birimSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM belediyebirim where birimid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public int birimDuzenle(int id, String name) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "UPDATE belediyebirim SET  birimname=? where birimid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, name);
			psmt.setInt(2,id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public  int  birimSayi(){
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
			ResultSet rs = psmt.executeQuery("Select count(*) from belediyebirim");

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
