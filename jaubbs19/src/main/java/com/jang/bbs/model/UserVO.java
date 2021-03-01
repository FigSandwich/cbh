package com.jang.bbs.model;

import javax.validation.constraints.NotEmpty;

public class UserVO {

	private int mno;
	@NotEmpty(message = "id 를 입력하세요")
	private String userId;
	@NotEmpty(message = "패스워드 를 입력하세요")
	private String passwd;
	private String name;
	private String jumin;
	private String regDate;
	private String email;
	private char del_yn = 'n';
	private String phone;
	private String dev_no;
	private String memo;
	private String missing;

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJumin() {
		return jumin;
	}

	public void setJumin(String jumin) {
		this.jumin = jumin;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public char getDel_yn() {
		return del_yn;
	}

	public void setDel_yn(char del_yn) {
		this.del_yn = del_yn;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDev_no() {
		return dev_no;
	}

	public void setDev_no(String dev_no) {
		this.dev_no = dev_no;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getMissing() {
		return missing;
	}

	public void setMissing(String missing) {
		this.missing = missing;
	}
	
	
	
	

}
