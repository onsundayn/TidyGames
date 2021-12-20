package com.TidyGames.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int notiNo;
	private String category;
	private String notiTitle;
	private String notiContent;
	private String notiWriter;
	private Date notiDate;
	
	
	public Notice() {}


	public Notice(int notiNo, String category, String notiTitle, String notiContent, String notiWriter, Date notiDate) {
		super();
		this.notiNo = notiNo;
		this.category = category;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiWriter = notiWriter;
		this.notiDate = notiDate;
	}


	public int getNotiNo() {
		return notiNo;
	}


	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getNotiTitle() {
		return notiTitle;
	}


	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}


	public String getNotiContent() {
		return notiContent;
	}


	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}


	public String getNotiWriter() {
		return notiWriter;
	}


	public void setNotiWriter(String notiWriter) {
		this.notiWriter = notiWriter;
	}


	public Date getNotiDate() {
		return notiDate;
	}


	public void setNotiDate(Date notiDate) {
		this.notiDate = notiDate;
	}


	@Override
	public String toString() {
		return "Notice [notiNo=" + notiNo + ", category=" + category + ", notiTitle=" + notiTitle + ", notiContent="
				+ notiContent + ", notiWriter=" + notiWriter + ", notiDate=" + notiDate + "]";
	};

	
}