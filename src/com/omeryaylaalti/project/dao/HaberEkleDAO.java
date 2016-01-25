package com.omeryaylaalti.project.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.omeryaylaalti.project.imp.persistence.PersistenceServiceImpl;
import com.omeryaylaalti.project.model.HaberEkle;
import com.omeryaylaalti.project.service.PersistenceService;

public class HaberEkleDAO {
	PreparedStatement pre = null;
	static FileInputStream fis = null;

	public static void haberEkle(int haberId, byte[] haberPhoto, String haberDate, String haberName,
			String haberComment) {
		PersistenceService persistenceService = new PersistenceServiceImpl();
		HaberEkle ekle = new HaberEkle();
		// ekle.setHaberId(haberId);
		// ekle.setHaberPhoto(haberPhoto);
		// ekle.setHaberDate(haberDate);
		// ekle.setHaberName(haberName);
		// ekle.setHaberComment(haberComment);
		persistenceService.save(ekle);

	}

	public void HaberEkleDB(int haberId, byte[] haberPhoto, String haberdate, String haberName, String haberComment)
			throws IOException {

		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			// Statement stmt=conn.createStatement();
			String sql = "INSERT INTO haberekleme (haberid, haberphoto, haberdate,habername, habercomment) values (?,?,?,?,?)";
			// String sql1 = "CREATE TABLE haberekleme " +
			// "(haberid INTEGER not NULL, " +
			// " haberphoto bytea, " +
			// " haberdate VARCHAR(255), " +
			// " habername VARCHAR(255), " +
			// " habercomment VARCHAR(255), " +
			// " PRIMARY KEY ( haberid ))";
			// //stmt.executeQuery(sql1);
			PreparedStatement statement = (PreparedStatement) conn.prepareStatement(sql);
			statement.setInt(1, haberId);
			statement.setBytes(2, haberPhoto);
			statement.setString(3, haberdate);
			statement.setString(4, haberName);
			statement.setString(5, haberComment);
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

	public HaberEkle getirId(String id) {
		HaberEkle r = null;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

			String query = "Select * from haberekleme where haberid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, Integer.parseInt(id));
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				r = new HaberEkle(rs.getInt("haberid"), rs.getBytes("haberphoto"), rs.getString("haberdate"),
						rs.getString("habername"), rs.getString("habercomment"));
				System.out.println(r);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}

	public int haberSil(int id) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "DELETE FROM haberekleme where haberid=?";

			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setInt(1, id);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public int haberGuncelle(int haberid, String haberdate, String habername, String habercomment) {
		try {
			Connection conn = null;
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
			final String User = "postgres";
			final String Password = "1234";
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			String query = "UPDATE haberekleme SET  haberdate=?, habername=?, habercomment=? where haberid=?";
			PreparedStatement psmt = conn.prepareStatement(query);
			psmt.setString(1, haberdate);
			psmt.setString(2, habername);
			psmt.setString(3, habercomment);
			psmt.setInt(4, haberid);
			return psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	public static byte[] resimEkle1() {
		String resim = "/Users/ozlemyaylaalti/Documents/Workspace/SacakBelediyesi/View/assets/haberimages/haber1.jpeg";
		File file = new File(resim);
		byte[] bFile = new byte[(int) file.length()];

		try {
			FileInputStream fileInputStream = new FileInputStream(file);
			fileInputStream.read(bFile);
			fileInputStream.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();

		} catch (IOException e) {
			e.printStackTrace();

		}
		return bFile;

	}

	public static byte[] resimEkle2() {
		String resim = "/Users/ozlemyaylaalti/Documents/Workspace/SacakBelediyesi/View/assets/haberimages/haber2.jpg";
		File file = new File(resim);
		byte[] bFile = new byte[(int) file.length()];

		try {
			FileInputStream fileInputStream = new FileInputStream(file);
			fileInputStream.read(bFile);
			fileInputStream.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();

		} catch (IOException e) {
			e.printStackTrace();

		}
		return bFile;

	}

	public static byte[] resimEkle3() {
		String resim = "/Users/ozlemyaylaalti/Documents/Workspace/SacakBelediyesi/View/assets/haberimages/haber3.jpg";
		File file = new File(resim);
		byte[] bFile = new byte[(int) file.length()];

		try {
			FileInputStream fileInputStream = new FileInputStream(file);
			fileInputStream.read(bFile);
			fileInputStream.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();

		} catch (IOException e) {
			e.printStackTrace();

		}
		return bFile;

	}

	public static byte[] resimEkle4() {
		String resim = "/Users/ozlemyaylaalti/Documents/Workspace/SacakBelediyesi/View/assets/haberimages/haber4.jpg";
		File file = new File(resim);
		byte[] bFile = new byte[(int) file.length()];

		try {
			FileInputStream fileInputStream = new FileInputStream(file);
			fileInputStream.read(bFile);
			fileInputStream.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();

		} catch (IOException e) {
			e.printStackTrace();

		}
		return bFile;

	}

	public String resimGetir1() {
		String resim1 = "assets/haberimages/haber1.jpeg";
		return resim1;
	}

	public String resimGetir2() {
		String resim2 = "assets/haberimages/haber2.jpg";
		return resim2;
	}

	public String resimGetir3() {
		String resim3 = "assets/haberimages/haber3.jpg";
		return resim3;
	}

	public String resimGetir4() {
		String resim4 = "assets/haberimages/haber4.jpg";
		return resim4;
	}
	
	public  int  haberSayi(){
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
			ResultSet rs = psmt.executeQuery("Select count(*) from haberekleme");

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
