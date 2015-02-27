package com.student.information.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.student.information.service.StudentService;

@Controller
@Component
@RequestMapping(value = {"/","/StudentInformationSystem/"})
public class AdminController {
	
	@Autowired
	private StudentService studentService;
		
	//this controller will handle all the request coming from the admin

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	//@ModelAttribute("deparmentInformation")
	
	@ResponseBody
	@RequestMapping(value="/admin", method = RequestMethod.POST)
	private String insertDepartments(@RequestParam("deptName") String departmentName,@RequestParam("departmentheadName") String departmentHeadName){
		//call the service class
		//service class will call dao
		
		getStudentService().saveDepartmentHead(departmentName, departmentHeadName);;
		
		System.out.println("insert successfull");
		return "";
	}
	
	
}
