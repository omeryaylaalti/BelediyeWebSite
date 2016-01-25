package com.omeryaylaalti.project.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class Users implements Serializable {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "id")
	private int id;
	@Column(name = "name")
	String name;
	@Column(name = "username")
	String username;
	@Column(name = "email")
	String email;
	@Column(name = "pass")
	String pass;
	@Column(name = "phone")
	String phone;

	public String toString() {
		return String.format("ID:%d Name: %s Username: %s Email: %s Pass: %s Phone %s", id, name, username, email, pass,
				phone);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Users(int id, String name, String username, String email, String pass, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.username = username;
		this.email = email;
		this.pass = pass;
		this.phone = phone;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

}
