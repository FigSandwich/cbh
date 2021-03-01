package com.jang.bbs.model;

public class BoardLikeVO {

	private int blno;
	private int bno;
	private String userId;
	private String regDate;

	public int getBlno() {
		return blno;
	}

	public void setBlno(int blno) {
		this.blno = blno;
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

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

}
