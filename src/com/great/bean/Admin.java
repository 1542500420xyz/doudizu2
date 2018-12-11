package com.great.bean;

import java.io.Serializable;

public class Admin implements Serializable {
	public static final  long serialVersionUID=135996869L;
	private Integer adminId;
	private String adminName;
	private String password;
	private String name;
	private Integer roleId;
	private Integer state;
	private String  createTime;
	
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Admin(Integer adminId, String adminName, String password, String name, Integer roleId, Integer state,
			String createTime) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.password = password;
		this.name = name;
		this.roleId = roleId;
		this.state = state;
		this.createTime = createTime;
	}


	public Integer getAdminId() {
		return adminId;
	}


	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}


	public String getAdminName() {
		return adminName;
	}


	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Integer getRoleId() {
		return roleId;
	}


	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}


	public Integer getState() {
		return state;
	}


	public void setState(Integer state) {
		this.state = state;
	}


	public String getCreateTime() {
		return createTime;
	}


	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
