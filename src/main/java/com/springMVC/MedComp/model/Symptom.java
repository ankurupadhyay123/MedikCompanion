package com.springMVC.MedComp.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the symptoms database table.
 * 
 */
@Entity
@Table(name = "Symptoms")
@NamedQuery(name = "Symptom.findAll", query = "SELECT s FROM Symptom s")
public class Symptom implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "sym_id")
	private int symId;

	private String bodypart;

	@Column(name = "sym_name")
	private String symName;

	public Symptom() {
	}

	public int getSymId() {
		return this.symId;
	}

	public void setSymId(int symId) {
		this.symId = symId;
	}

	public String getBodypart() {
		return this.bodypart;
	}

	public void setBodypart(String bodypart) {
		this.bodypart = bodypart;
	}

	public String getSymName() {
		return this.symName;
	}

	public void setSymName(String symName) {
		this.symName = symName;
	}

}