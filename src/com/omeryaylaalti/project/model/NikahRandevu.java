package com.omeryaylaalti.project.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NikahRandevuEkle")
public class NikahRandevu implements Serializable {
	/**
	 * Author - Ömer YAYLAALTI
	 */
	private static final long serialVersionUID = 1L;
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "nikahId")
	@Id
	private int nikahId;
	@Column(name = "nikahdate")
	String nikahdate;
	@Column(name = "nikahtime")
	String nikahtime;
	@Column(name = "erkekname")
	String erkekname;
	@Column(name = "bayanname")
	String bayanname;
	@Column(name = "erkektckimlik")
	String erkektckimlik;
	@Column(name = "bayantckimlik")
	String bayantckimlik;
	@Column(name = "rezervasyon_email")
	String rezervasyon_email;
	

	public String toString() {
		return String.format("ID:%d Gun: %s Time: %s Ay: %s Yıl :%s ", nikahId, nikahdate, nikahtime, erkekname, bayanname);
	}


	public NikahRandevu(int nikahId, String nikahdate, String nikahtime, String erkekname, String bayanname,
			String erkektckimlik, String bayantckimlik, String rezervasyon_email) {
		super();
		this.nikahId = nikahId;
		this.nikahdate = nikahdate;
		this.nikahtime = nikahtime;
		this.erkekname = erkekname;
		this.bayanname = bayanname;
		this.erkektckimlik = erkektckimlik;
		this.bayantckimlik = bayantckimlik;
		this.rezervasyon_email = rezervasyon_email;
	}


	public NikahRandevu() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getNikahId() {
		return nikahId;
	}


	public void setNikahId(int nikahId) {
		this.nikahId = nikahId;
	}


	public String getNikahdate() {
		return nikahdate;
	}


	public void setNikahdate(String nikahdate) {
		this.nikahdate = nikahdate;
	}


	public String getNikahtime() {
		return nikahtime;
	}


	public void setNikahtime(String nikahtime) {
		this.nikahtime = nikahtime;
	}


	public String getErkekname() {
		return erkekname;
	}


	public void setErkekname(String erkekname) {
		this.erkekname = erkekname;
	}


	public String getBayanname() {
		return bayanname;
	}


	public void setBayanname(String bayanname) {
		this.bayanname = bayanname;
	}


	public String getErkektckimlik() {
		return erkektckimlik;
	}


	public void setErkektckimlik(String erkektckimlik) {
		this.erkektckimlik = erkektckimlik;
	}


	public String getBayantckimlik() {
		return bayantckimlik;
	}


	public void setBayantckimlik(String bayantckimlik) {
		this.bayantckimlik = bayantckimlik;
	}


	public String getRezervasyon_email() {
		return rezervasyon_email;
	}


	public void setRezervasyon_email(String rezervasyon_email) {
		this.rezervasyon_email = rezervasyon_email;
	}



}
