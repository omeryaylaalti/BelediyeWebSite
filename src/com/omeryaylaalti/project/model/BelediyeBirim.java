package com.omeryaylaalti.project.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BelediyeBirim")
public class BelediyeBirim implements Serializable {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "birimId")
	int birimid;
	@Column(name = "birimName")
	String birimname;

	public String toString() {
		return String.format("ID:%d Name: %s", birimid, birimname);
	}

	public int getBirimid() {
		return birimid;
	}

	public void setBirimid(int birimid) {
		this.birimid = birimid;
	}

	public String getBirimname() {
		return birimname;
	}

	public void setBirimname(String birimname) {
		this.birimname = birimname;
	}

	public BelediyeBirim() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BelediyeBirim(int birimid, String birimname) {
		super();
		this.birimid = birimid;
		this.birimname = birimname;
	}

}
