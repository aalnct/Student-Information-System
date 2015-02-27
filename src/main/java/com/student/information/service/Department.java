package com.student.information.service;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="department", catalog="student")
public class Department {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer departmentId;
	
	@Column(name="dept_name")
	private String departmentName;
	
	@OneToMany(mappedBy="department",cascade = CascadeType.ALL)
	private List<Student> student; 
	
	@OneToOne
	@JoinColumn(name = "id")
	private DepartmentHead departmenthead;
	
	public DepartmentHead getDepartmenthead() {
		return departmenthead;
	}
	public void setDepartmenthead(DepartmentHead departmenthead) {
		this.departmenthead = departmenthead;
	}
	public List<Student> getStudent() {
		return student;
	}
	public void setStudent(List<Student> student) {
		this.student = student;
	}
	
	public Integer getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
	
	

}
