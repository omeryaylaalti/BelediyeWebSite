package com.omeryaylaalti.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BelediyeCalisanlar")
public class BelediyeCalisanlar {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "calisanId")
	int calisanid;
	@Column(name = "calisanName")
	String calisanname;
	@Column(name = "calisanBirim")
	String calisanbirim;
	@Column(name = "calisanIl")
	String calisanil;
	@Column(name = "calisanTc")
	String calisantc;
	@Column(name = "calisanComment")
	String calisancomment;

	public String toString() {
		return String.format("ID:%d Name: %s Birimi: %s Nufüs İl: %s TC: %s Açıklama: %s", calisanid, calisanname,
				calisanbirim, calisanil, calisantc, calisancomment);
	}

	public int getCalisanid() {
		return calisanid;
	}

	public void setCalisanid(int calisanid) {
		this.calisanid = calisanid;
	}

	public String getCalisanname() {
		return calisanname;
	}

	public void setCalisanname(String calisanname) {
		this.calisanname = calisanname;
	}

	public String getCalisanbirim() {
		return calisanbirim;
	}

	public void setCalisanbirim(String calisanbirim) {
		this.calisanbirim = calisanbirim;
	}

	public String getCalisanil() {
		return calisanil;
	}

	public void setCalisanil(String calisanil) {
		this.calisanil = calisanil;
	}

	public String getCalisantc() {
		return calisantc;
	}

	public void setCalisantc(String calisantc) {
		this.calisantc = calisantc;
	}

	public String getCalisancomment() {
		return calisancomment;
	}

	public void setCalisancomment(String calisancomment) {
		this.calisancomment = calisancomment;
	}

	public BelediyeCalisanlar(int calisanid, String calisanname, String calisanbirim, String calisanil,
			String calisantc, String calisancomment) {
		super();
		this.calisanid = calisanid;
		this.calisanname = calisanname;
		this.calisanbirim = calisanbirim;
		this.calisanil = calisanil;
		this.calisantc = calisantc;
		this.calisancomment = calisancomment;
	}

	public BelediyeCalisanlar() {
		super();
		// TODO Auto-generated constructor stub
	}

}
