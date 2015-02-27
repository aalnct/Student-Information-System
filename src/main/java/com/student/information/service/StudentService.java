package com.student.information.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.student.information.dao.StudentDAO;

@Service
@Component
public class StudentService {
	
	
	@Autowired
	private StudentDAO studentDao;
	
	
	public StudentDAO getStudentDao() {
		return studentDao;
	}


	public void setStudentDao(StudentDAO studentDao) {
		this.studentDao = studentDao;
	}

	@Transactional
	public void saveDepartmentHead(String deptname, String headName){
		
		if(! (deptname.equals(null) && headName.equals(null))){
			getStudentDao().insertDepartmentInformation(deptname, headName);
		}
	}
	
}
