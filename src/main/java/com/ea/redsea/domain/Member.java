package com.ea.redsea.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;



@Entity 
public class Member implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 109790790L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
 	private long id;
	
	@Column(length = 16)
	@NotEmpty
	private String firstname;
	
	@Column(length = 16)
	@com.ea.redsea.validation.EmptyOrSize(min=5, max = 9, message= "{EmptyOrSize}")
	private String lastname;
	
	private String email;

	@com.ea.redsea.validation.NullMinNumber(value=6)
	private Integer age;
 	
	@Column(length = 32)
	@NotEmpty
	private String title;
	
	private String adress;
	@com.ea.redsea.validation.NullMinNumber(value=6)
 	private Integer membernumber;

	@OneToOne(fetch=FetchType.EAGER,  cascade = CascadeType.ALL) 
 	@JoinColumn(name="member_id") 
 	UserCredentials userCredentials;
 	
  
/*    @Valid
    @Size(min = 1, message="{List.empty}" )
*/
	

 	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
 
	
 	public UserCredentials getUserCredentials() {
		return userCredentials;
	}
	public void setUserCredentials(UserCredentials userCredentials) {
		this.userCredentials = userCredentials;
	}
	
	
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
 	public Integer getAge() {
		return age;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getMembernumber() {
		return membernumber;
	}
	public void setMembernumber(Integer membernumber) {
		this.membernumber = membernumber;
	}

  }
