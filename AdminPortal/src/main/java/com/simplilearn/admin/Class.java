package com.simplilearn.admin;


public class Class {
	
	//private int id;
	private String section;
	private String teacher;
	private String subject;
	
	
	
	
	public Class(String section, String teacher, String subject, String time) {
		super();
		
		this.section = section;
		this.teacher = teacher;
		this.subject = subject;
		
	}
	
 
	
	
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
	

}


