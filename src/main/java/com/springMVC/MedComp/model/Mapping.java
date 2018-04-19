package com.springMVC.MedComp.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the mappings database table.
 * 
 */
@Entity
@Table(name = "Mappings")
@NamedQuery(name = "Mapping.findAll", query = "SELECT m FROM Mapping m")
public class Mapping implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "map_id")
	private int mapId;

	@Column(name = "dis_id")
	private int disId;

	@Column(name = "sym_id")
	private int symId;

	public Mapping() {
	}

	public int getMapId() {
		return this.mapId;
	}

	public void setMapId(int mapId) {
		this.mapId = mapId;
	}

	public int getDisId() {
		return this.disId;
	}

	public void setDisId(int disId) {
		this.disId = disId;
	}

	public int getSymId() {
		return this.symId;
	}

	public void setSymId(int symId) {
		this.symId = symId;
	}

}