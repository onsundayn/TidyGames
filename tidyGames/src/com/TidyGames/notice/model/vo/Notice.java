package com.TidyGames.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int notiNo;
	private String category;
	private String notiTitle;
	private String notiContent;
	private String notiWriter;
	private Date notiDate;
	
	private int memNo;
	private String member;
	private String answer;
	private Date ansDate;
	private String date;
	
	public Notice() {}

	public Notice(int notiNo, String category, String notiTitle, String notiContent, String notiWriter, Date notiDate,
			int memNo, String member, String answer, Date ansDate) {
		super();
		this.notiNo = notiNo;
		this.category = category;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiWriter = notiWriter;
		this.notiDate = notiDate;
		this.memNo = memNo;
		this.member = member;
		this.answer = answer;
		this.ansDate = ansDate;
	}
	
	public Notice(int notiNo, String notiTitle, String notiWriter, int memNo, String member, String answer,
			String date) {
		super();
		this.notiNo = notiNo;
		this.notiTitle = notiTitle;
		this.notiWriter = notiWriter;
		this.memNo = memNo;
		this.member = member;
		this.answer = answer;
		this.date = date;
	}	

	
	public Notice(int notiNo, String notiTitle, String notiContent, Date notiDate, String answer) {
		super();
		this.notiNo = notiNo;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiDate = notiDate;
		this.answer = answer;
	}

	public Notice(int notiNo, String notiTitle, String notiContent, String notiWriter, Date notiDate, int memNo,
			String answer, Date ansDate) {
		super();
		this.notiNo = notiNo;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiWriter = notiWriter;
		this.notiDate = notiDate;
		this.memNo = memNo;
		this.answer = answer;
		this.ansDate = ansDate;
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

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getAnsDate() {
		return ansDate;
	}

	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}

	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Notice [notiNo=" + notiNo + ", category=" + category + ", notiTitle=" + notiTitle + ", notiContent="
				+ notiContent + ", notiWriter=" + notiWriter + ", notiDate=" + notiDate + ", memNo=" + memNo
				+ ", member=" + member + ", answer=" + answer + ", ansDate=" + ansDate + "]";
	}


	
}
