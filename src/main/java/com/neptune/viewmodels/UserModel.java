package com.neptune.viewmodels;

import java.util.Calendar;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UserModel  {
	
	private int id;
    private String firstName;
    private String surName;
    private String username;
    private String email;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthDate;
    private String profession;
    private int age;
    
    public int getId(){
    	return id;
    }
    public void setId(int id){
    	this.id = id;
    }
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getSurName() {
		return surName;
	}
	public void setSurName(String surName) {
		this.surName = surName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}    
	public int getAge() {		
		Calendar cal = Calendar.getInstance();
		Calendar tempCal = Calendar.getInstance();
		tempCal.set(1960, 12, 25);	//default
		cal.setTime(birthDate != null? birthDate : tempCal.getTime());
		return Calendar.getInstance().get(Calendar.YEAR) - cal.get(Calendar.YEAR);
	}
	public void setAge(int age) {
		this.age = age;
	}
    
 
}
