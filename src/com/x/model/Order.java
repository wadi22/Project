package com.x.model;

public class Order {
private String name;
private String location;
private String number;
private String email;
private String events;
private String requirements;
private String managerName;
private String userId;
private int persons;

public int getPersons() {
	return persons;
}
public void setPersons(int persons) {
	this.persons = persons;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getManagerName() {
	return managerName;
}
public void setManagerName(String managerId) {
	this.managerName = managerId;
}
public String getEvents() {
	return events;
}
public void setEvents(String events) {
	this.events = events;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getRequirements() {
	return requirements;
}
public void setRequirements(String requirements) {
	this.requirements = requirements;
}
}
