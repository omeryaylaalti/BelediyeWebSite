package com.omeryaylaalti.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dilekvesikayetler")
public class DilekveSikayetler {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "sikayetId")
	int sikayetid;
	@Column(name = "sikayetSubject")
	String sikayetsubject;
	@Column(name = "sikayetComment")
	String sikayetcomment;

	public String toString() {
		return String.format("ID:%d Şikayet Konu: %s Açıklma: %s ", sikayetid, sikayetsubject, sikayetcomment);
	}

	public int getSikayetid() {
		return sikayetid;
	}

	public void setSikayetid(int sikayetid) {
		this.sikayetid = sikayetid;
	}

	public String getSikayetsubject() {
		return sikayetsubject;
	}

	public void setSikayetsubject(String sikayetsubject) {
		this.sikayetsubject = sikayetsubject;
	}

	public String getSikayetcomment() {
		return sikayetcomment;
	}

	public void setSikayetcomment(String sikayetcomment) {
		this.sikayetcomment = sikayetcomment;
	}

	public DilekveSikayetler(int sikayetid, String sikayetsubject, String sikayetcomment) {
		super();
		this.sikayetid = sikayetid;
		this.sikayetsubject = sikayetsubject;
		this.sikayetcomment = sikayetcomment;
	}

	public DilekveSikayetler() {
		super();
		// TODO Auto-generated constructor stub
	}

}
