package com.jang.bbs.model;

public class AttFileVO {

	private int fno;
	private int bno;
	private String ofilename;
	private String sfilename;
	private long filesize;

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getOfilename() {
		return ofilename;
	}

	public void setOfilename(String ofilename) {
		this.ofilename = ofilename;
	}

	public String getSfilename() {
		return sfilename;
	}

	public void setSfilename(String sfilename) {
		this.sfilename = sfilename;
	}

	public long getFilesize() {
		return filesize;
	}

	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}

}
