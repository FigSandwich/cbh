package com.jang.bbs.model;

import javax.validation.constraints.NotEmpty;

public class AdminVO {
	
	@NotEmpty(message = "id 를 입력해주세요 ")
	private String adminid;
	@NotEmpty(message = "pwd를 입력해주세요")
	private String password;
	private String name;
	
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
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
	

}
