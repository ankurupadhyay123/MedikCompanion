package com.springMVC.MedComp.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the disease database table.
 * 
 */
@Entity
@NamedQuery(name = "Disease.findAll", query = "SELECT d FROM Disease d")
public class Disease implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "dis_id")
	private int disId;

	@Column(name = "dis_name")
	private String disName;

	public Disease() {
	}

	public int getDisId() {
		return this.disId;
	}

	public void setDisId(int disId) {
		this.disId = disId;
	}

	public String getDisName() {
		return this.disName;
	}

	public void setDisName(String disName) {
		this.disName = disName;
	}

}