package com.great.bean;

public class User {
	private String userName;
	private String pwd;
	private String secpwd;
	private String sex;
	private int school;
	private int job;
	private String phone;
	private String email;
	private String schoolName;
	private int scroe;
	private String stateName;
	
	
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public int getScroe() {
		return scroe;
	}
	public void setScroe(int scroe) {
		this.scroe = scroe;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSecpwd() {
		return secpwd;
	}
	public void setSecpwd(String secpwd) {
		this.secpwd = secpwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getSchool() {
		return school;
	}
	public void setSchool(int school) {
		this.school = school;
	}
	public int getJob() {
		return job;
	}
	public void setJob(int job) {
		this.job = job;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	public User(String userName, String pwd, String secpwd, String sex, int school, int job, String phone, String email,
			String schoolName, int scroe, String stateName) {
		super();
		this.userName = userName;
		this.pwd = pwd;
		this.secpwd = secpwd;
		this.sex = sex;
		this.school = school;
		this.job = job;
		this.phone = phone;
		this.email = email;
		this.schoolName = schoolName;
		this.scroe = scroe;
		this.stateName = stateName;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
