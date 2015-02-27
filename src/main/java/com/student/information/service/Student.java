package com.student.information.service;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="studentinformation", catalog="student")
public class Student {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="studentid")
	private int studentId;
	
	
	@Column(name="Name",nullable=false)
	private String name;
	@Column(name="Age",nullable=false)
	private Integer age;
	@Column(name="RollNumber",nullable=false)
	private Integer rollno;
	@Column(name="password",nullable=false)
	private String password;
	@Column(name="EmailAddress",nullable=false)
	private String emailAddress;
	
	@OneToOne(mappedBy="student",cascade=CascadeType.ALL)
	@JoinColumn(updatable=false,insertable=false)
	private Address address;
	
	@ManyToOne(targetEntity=Student.class)
	@PrimaryKeyJoinColumn
	private Department department;
	//@OneToOne or @ManyToOne 
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getRollno() {
		return rollno;
	}
	public void setRollno(Integer rollno) {
		this.rollno = rollno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
}
