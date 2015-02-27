package com.student.information.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.student.information.service.Address;
import com.student.information.service.Student;

@Controller
@RequestMapping(value= {"/","/StudentInformationSystem/","/login","Signup"})
public class StudentController {
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	private ModelAndView userLogin(@RequestParam String email, @RequestParam String password){
		ModelAndView modelandview = new ModelAndView();
		System.out.println("Student Login");
		return modelandview;
	} 
	
	@ResponseBody
	@RequestMapping(value="/Signup",method=RequestMethod.POST)
	private ModelAndView userSignUp(@ModelAttribute("student") Student student){
		ModelAndView modelandview = new ModelAndView();
		System.out.println("User trying to signup");
		modelandview.setViewName("address");
		return modelandview;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/studentdepartment", method=RequestMethod.POST)
	private ModelAndView userAddressInformation(@ModelAttribute("address") Address address){
		
		ModelAndView modelandView= new ModelAndView();
		modelandView.setViewName("studentDepartment");
		return modelandView;
	}
}
