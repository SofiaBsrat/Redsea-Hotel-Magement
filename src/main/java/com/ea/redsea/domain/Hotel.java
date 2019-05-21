package com.ea.redsea.domain;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Hotel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
private String Name;
private String contact;
private String rating;
private String city;
private String address;
private String descroption;
private float price;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getRating() {
	return rating;
}
public void setRating(String rating) {
	this.rating = rating;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getDescroption() {
	return descroption;
}
public void setDescroption(String descroption) {
	this.descroption = descroption;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}



}
