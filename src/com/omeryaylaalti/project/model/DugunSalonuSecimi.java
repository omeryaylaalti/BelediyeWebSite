package com.omeryaylaalti.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dugunsalonusecimi")
public class DugunSalonuSecimi {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "dugunId")
	int dugunid;
	@Column(name = "dugunDate")
	String dugundate;
	@Column(name = "dugunsalonuName")
	String dugunsalonuname;
	@Column(name = "kiralayanName")
	String kiralayanname;
	@Column(name = "dugunComment")
	String duguncomment;

	public String toString() {
		return String.format("ID:%d Date: %s Salon Adı: %s Kiralayan : %s Açıklama: %s", dugunid, dugundate,
				dugunsalonuname, kiralayanname, duguncomment);
	}

	public int getDugunid() {
		return dugunid;
	}

	public void setDugunid(int dugunid) {
		this.dugunid = dugunid;
	}

	public String getDugundate() {
		return dugundate;
	}

	public void setDugundate(String dugundate) {
		this.dugundate = dugundate;
	}

	public String getDugunsalonuname() {
		return dugunsalonuname;
	}

	public void setDugunsalonuname(String dugunsalonuname) {
		this.dugunsalonuname = dugunsalonuname;
	}

	public String getKiralayanname() {
		return kiralayanname;
	}

	public void setKiralayanname(String kiralayanname) {
		this.kiralayanname = kiralayanname;
	}

	public String getDuguncomment() {
		return duguncomment;
	}

	public void setDuguncomment(String duguncomment) {
		this.duguncomment = duguncomment;
	}

	public DugunSalonuSecimi() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DugunSalonuSecimi(int dugunid, String dugundate, String dugunsalonuname, String kiralayanname,
			String duguncomment) {
		super();
		this.dugunid = dugunid;
		this.dugundate = dugundate;
		this.dugunsalonuname = dugunsalonuname;
		this.kiralayanname = kiralayanname;
		this.duguncomment = duguncomment;
	}

}
