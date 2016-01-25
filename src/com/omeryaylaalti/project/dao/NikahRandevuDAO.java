package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import org.hibernate.HibernateException;

import com.omeryaylaalti.project.imp.persistence.PersistenceServiceImpl;
import com.omeryaylaalti.project.model.NikahRandevu;
import com.omeryaylaalti.project.service.PersistenceService;

public class NikahRandevuDAO {
	static PersistenceService persistenceService = new PersistenceServiceImpl();

	public static void main(String[] args) {
		NikahRandevuDAO dao = new NikahRandevuDAO();
		dao.nikahGuncelle(54, "26/1/2016", "17:00", "Utkucan Küçük", "XXY", "10616005368", "10766000336", "omer_y.34@hotmail.com");
	}

	public static void NikahRandevuEkle(String nikahdate, String nikahtime, String erkekName, String bayanName,
			String erkektcKimlikNo, String bayantcKimlikNo, String email) {
		try {
			System.out.println("NİKAH EKLEME İŞLEMİ YAPILIYOR.");
			NikahRandevu nikah = new NikahRandevu();
			nikah.setNikahdate(nikahdate);
			nikah.setNikahtime(nikahtime);
			nikah.setErkekname(erkekName);
			nikah.setBayanname(bayanName);
			nikah.setErkektckimlik(erkektcKimlikNo);
			nikah.setBayantckimlik(bayantcKimlikNo);
			nikah.setRezervasyon_email(email);
			persistenceService.save(nikah);

		} catch (HibernateException e) {
			e.printStackTrace();
			System.out.println("NİKAH EKLEME İŞLEMİ YAPILAMADI.");

		}
	}

	public static void NikahEkle(String nikahdate, String nikahtime, String erkekName, String bayanName,
			String erkektcKimlikNo, String bayantcKimlikNo, String email) {
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";

		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String sql = "INSERT INTO NikahRandevuEkle (bayanname, erkekname, nikahtime,nikahdate,erkektckimlik,bayantckimlik,rezervasyon_email) values (?,?,?,?,?,?,?)";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setString(1, bayanName);
			statement.setString(2, erkekName);
			statement.setString(3, nikahtime);
			statement.setString(4, nikahdate);
			statement.setString(5, erkektcKimlikNo);
			statement.setString(6, bayantcKimlikNo);
			statement.setString(7, email);
			// sends the statement to the database server
			statement.executeUpdate();
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

	public NikahRandevu getirId(String id) {
		NikahRandevu r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from nikahrandevuekle where nikahid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				r = new NikahRandevu(rs.getInt("nikahId"), rs.getString("nikahdate"), rs.getString("nikahtime"), rs.getString("erkekname"),
						rs.getString("bayanname"), rs.getString("erkektckimlik"), rs.getString("bayantckimlik"),
						rs.getString("rezervasyon_email"));
				System.out.println(r);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}

	public int nikahSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM nikahrandevuekle where nikahid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public int nikahGuncelle(int nikahid, String nikahdate, String nikahtime, String erkekname, String bayanname,
			String erkektcKimlikNo, String bayantcKimlikNo, String email) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "UPDATE nikahrandevuekle SET  nikahdate=?, nikahtime=?, erkekname=?, bayanname=?, erkektckimlik=? ,bayantckimlik=?,rezervasyon_email=? where nikahid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, nikahdate);
			psmt.setString(2, nikahtime);
			psmt.setString(3, erkekname);
			psmt.setString(4, bayanname);
			psmt.setString(5, erkektcKimlikNo);
			psmt.setString(6, bayantcKimlikNo);
			psmt.setString(7, email);
			psmt.setInt(8, nikahid);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public int nikahSayi() {
		Connection conn = null;
		Integer rowCount = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			Statement psmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = psmt.executeQuery("Select count(*) from nikahrandevuekle");

			while (rs.next()) {
				rowCount = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}

	public static Vector TarihGetir() {
		Connection conn = null;
		Vector rowDate = null;
		Vector tableData = null;
		Object date = "";

		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			Statement psmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = psmt.executeQuery("Select nikahdate from nikahrandevuekle");
			ResultSetMetaData md = rs.getMetaData();

			int count = md.getColumnCount();
			tableData = new Vector();
			while (rs.next()) {
				rowDate = new Vector(count);
				for (int i = 1; i <= count; i++) {
					date = "'" + rs.getObject(i) + "'";
				}
				tableData.addElement(date);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return tableData;
	}

	public static Vector SaatGetir(String date) {
		Connection conn = null;
		Object rowSaat = null;
		Vector tableData = null;

		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			Statement psmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = psmt.executeQuery("Select nikahtime from nikahrandevuekle where nikahdate='" + date + "'");
			ResultSetMetaData md = rs.getMetaData();

			int count = md.getColumnCount();
			tableData = new Vector();
			while (rs.next()) {
				for (int i = 1; i <= count; i++) {
					rowSaat = rs.getObject(i);
				}
				tableData.addElement(rowSaat);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return tableData;
	}

	public static boolean rezervasyonVarmi(String date, String time) {
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
			String query = "Select nikahtime,nikahdate from nikahrandevuekle where nikahdate='" + date + "'and nikahtime='"+ time + "'";
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(query);
			ResultSet row = statement.executeQuery();
			if (row.next()) {
				return true;
			} else
				return false;
		}

		catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {

				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return false;
	}

}
