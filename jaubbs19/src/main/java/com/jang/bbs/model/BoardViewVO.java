package com.jang.bbs.model;

public class BoardViewVO {

	private int bvno;
	private int bno;
	private String userId;
	private char mem_yn;
	private String regDate;

	public int getBvno() {
		return bvno;
	}

	public void setBvno(int bvno) {
		this.bvno = bvno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public char getMem_yn() {
		return mem_yn;
	}

	public void setMem_yn(char mem_yn) {
		this.mem_yn = mem_yn;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

}
