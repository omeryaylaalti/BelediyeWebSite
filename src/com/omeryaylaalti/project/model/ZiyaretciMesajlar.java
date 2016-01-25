package com.omeryaylaalti.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ziyaretciMesaj")
public class ZiyaretciMesajlar {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "mesajid")
	int mesajid;
	@Column(name = "gonderenname")
	String gonderenname;
	@Column(name = "gonderenemail")
	String gonderenemail;
	@Column(name = "mesajicerik")
	String mesajicerik;
	@Column(name = "mesajkonu")
	String mesajkonu;

	public String toString() {
		return String.format("ID:%d Name: %s Email: %s İçerik: %s Konu: %s", mesajid, gonderenname,
				gonderenemail, mesajicerik, mesajkonu);
	}
	

	public int getMesajid() {
		return mesajid;
	}

	public void setMesajid(int mesajid) {
		this.mesajid = mesajid;
	}

	public String getGonderenname() {
		return gonderenname;
	}

	public void setGonderenname(String gonderenname) {
		this.gonderenname = gonderenname;
	}

	public String getGonderenemail() {
		return gonderenemail;
	}

	public void setGonderenemail(String gonderenemail) {
		this.gonderenemail = gonderenemail;
	}

	public String getMesajicerik() {
		return mesajicerik;
	}

	public void setMesajicerik(String mesajicerik) {
		this.mesajicerik = mesajicerik;
	}

	public String getMesajkonu() {
		return mesajkonu;
	}

	public void setMesajkonu(String mesajkonu) {
		this.mesajkonu = mesajkonu;
	}

	public ZiyaretciMesajlar(int mesajid, String gonderenname, String gonderenemail, String mesajicerik,
			String mesajkonu) {
		super();
		this.mesajid = mesajid;
		this.gonderenname = gonderenname;
		this.gonderenemail = gonderenemail;
		this.mesajicerik = mesajicerik;
		this.mesajkonu = mesajkonu;
	}

	public ZiyaretciMesajlar() {
		super();
		// TODO Auto-generated constructor stub
	}

}
