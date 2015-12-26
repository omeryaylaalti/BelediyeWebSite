package com.omeryaylaalti.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "kullanıcılar")
public class Kullanicilar {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	@Id
	private int id;

	String username;
	String email;
	String password;

	public String toString() {
		return String.format("ID:%d Name: %s", id, username);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
