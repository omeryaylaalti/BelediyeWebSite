package com.omeryaylaalti.project.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "HaberEkle")
public class HaberEkle {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "haberId")
	int haberid;
	@Column(name = "haberPhoto")
	@Lob
	@Basic(fetch = FetchType.LAZY)
	byte[] haberphoto;
	@Column(name = "haberDate")
	String haberdate;
	@Column(name = "haberName")
	String habername;
	@Column(name = "haberComment")
	String habercomment;

	public String toString() {
		return String.format("ID:%d Haber Resim URL: %s Haber Tarihi: %s Haber Başlığı: %s Açıklama: %s", haberid,
				haberphoto, haberdate, habername, habercomment);
	}

	public int getHaberid() {
		return haberid;
	}

	public void setHaberid(int haberid) {
		this.haberid = haberid;
	}

	public byte[] getHaberphoto() {
		return haberphoto;
	}

	public void setHaberphoto(byte[] haberphoto) {
		this.haberphoto = haberphoto;
	}

	public String getHaberdate() {
		return haberdate;
	}

	public void setHaberdate(String haberdate) {
		this.haberdate = haberdate;
	}

	public String getHabername() {
		return habername;
	}

	public void setHabername(String habername) {
		this.habername = habername;
	}

	public String getHabercomment() {
		return habercomment;
	}

	public void setHabercomment(String habercomment) {
		this.habercomment = habercomment;
	}

	public HaberEkle(int haberid, byte[] haberphoto, String haberdate, String habername, String habercomment) {
		super();
		this.haberid = haberid;
		this.haberphoto = haberphoto;
		this.haberdate = haberdate;
		this.habername = habername;
		this.habercomment = habercomment;
	}

	public HaberEkle() {
		super();
		// TODO Auto-generated constructor stub
	}

}
