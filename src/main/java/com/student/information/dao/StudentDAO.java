package com.student.information.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.student.information.service.Department;
import com.student.information.service.DepartmentHead;

@Repository
public class StudentDAO  implements IStudentDAO{
		
	boolean valueInserted;
	
	@Autowired
	private SessionFactory sessionFacotry;
	
	private Session session;
	
	public void setSession(Session session) {
		this.session = session;
	}

	public Session getSession() {
		return sessionFacotry.openSession();
	}

	public SessionFactory getSessionFacotry() {
		return sessionFacotry;
	}

	public void setSessionFacotry(SessionFactory sessionFacotry) {
		this.sessionFacotry = sessionFacotry;
	}
	
	

	@SuppressWarnings("rawtypes")
	@Override
	public void insertDepartmentInformation(String deptName, String deptHeadName) {
			Department department =new Department();
			DepartmentHead departmentHead =  new DepartmentHead();
		
			List query = getSession().createQuery("from Department where departmentName = :deptName").setParameter("deptName", deptName).list();
			if(query.size() <= 0){
				
				department.setDepartmentName(deptName);
				departmentHead.setHeadName(deptHeadName);
				
				getSession().save(Department.class);
				getSession().save(DepartmentHead.class);
				
				valueInserted = true;
				
				if(valueInserted){
					
					List<Query> selectInformation = getSession().createQuery("from DepartmentHead dh, Department dt where dh.id = dt.departmentId").list();
					
					if(!selectInformation.isEmpty()){
						System.out.println("Information Saved");
						
					}
					
				}
				
			}else{
				
			}
			
	}
}
