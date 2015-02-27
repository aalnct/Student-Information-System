package com.student.information.service;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="address", catalog="student")
public class Address {

	@Id
	@Column(name="studentid", unique=true,nullable=false)
	private Integer studentId;
	@Column(name = "Address_line1",nullable=false)
	private String address_Line1;
	@Column(name = "Address_line2",nullable=false)
	private String address_Line2;
	@Column(name = "City",nullable=false)
	private String city;
	@Column(name = "State",nullable=false)
	private String state;
	@Column(name = "Zip",nullable=false)
	private Integer zipCode;
	@Column(name = "Country",nullable=false)
	private String country;
	
	@OneToOne
	@PrimaryKeyJoinColumn
	private Student student;
	
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	
	public String getAddress_Line1() {
		return address_Line1;
	}
	public void setAddress_Line1(String address_Line1) {
		this.address_Line1 = address_Line1;
	}
	public String getAddress_Line2() {
		return address_Line2;
	}
	public void setAddress_Line2(String address_Line2) {
		this.address_Line2 = address_Line2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getZipCode() {
		return zipCode;
	}
	public void setZipCode(Integer zipCode) {
		this.zipCode = zipCode;
	}
	
	
	
}
