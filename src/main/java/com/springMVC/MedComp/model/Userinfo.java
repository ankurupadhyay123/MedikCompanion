package com.springMVC.MedComp.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the userinfo database table.
 * 
 */
@Entity
@NamedQuery(name = "Userinfo.findAll", query = "SELECT u FROM Userinfo u")
public class Userinfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int userId;

	private int age;

	private String email;

	private String firstName;

	private String gender;

	private String lastName;

	private String middleName;

	private String password;

	public Userinfo() {
	}

	public Userinfo(int age, String email, String firstName, String gender, String lastName, String middleName,
			String password) {
		super();
		this.age = age;
		this.email = email;
		this.firstName = firstName;
		this.gender = gender;
		this.lastName = lastName;
		this.middleName = middleName;
		this.password = password;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return this.middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}