package com.x.model;

public class insman {

	
	private int ManagerID;
	private String managerName;
	private String Address;
	private String Number;
	private String Email;
	private String speciality;
	public int getManagerID() {
		return ManagerID;
	}
	public void setManagerID(int managerID) {
		ManagerID = managerID;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getNumber() {
		return Number;
	}
	public void setNumber(String number) {
		Number = number;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	
}
