package com.omeryaylaalti.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.omeryaylaalti.project.imp.persistence.PersistenceServiceImpl;
import com.omeryaylaalti.project.model.Yetki;
import com.omeryaylaalti.project.service.PersistenceService;

public class YetkiDAO {
	static PersistenceService persistenceService = new PersistenceServiceImpl();

	public static void main(String[] args) {

		//yetkiGor(2);
		//isValidLogin(1, "Admin");
		getId("Admin");
		
	}

	public static void yetkiGor(int id) {
		Yetki yetki = persistenceService.select(Yetki.class, id);
		System.out.println(yetki);
	}
	
	
	public static int getId(String name) {
		int id = 0;
		Connection conn = null;
		final String JDBC_DRIVER = "org.postgresql.Driver";
		final String DB_URL = "jdbc:postgresql://localhost:5432/MyDB";
		final String User = "postgres";
		final String Password = "1234";
		try {
			Class.forName(JDBC_DRIVER);
			conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);
			System.out.println("baglantı tamamdır ");

			PreparedStatement stmt = (PreparedStatement) conn
					.prepareStatement("select id from yetki where name=?");
			stmt.setString(1, name);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				// Retrieve by column name
				id = rs.getInt("id");
				System.out.println(id);

			}
			rs.close();
			conn.close();

		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();

		}
		return id;
	}

}
