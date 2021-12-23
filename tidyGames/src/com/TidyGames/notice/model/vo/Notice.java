package com.TidyGames.notice.model.vo;

public class Notice {
	
	private int notiNo;
	private String notiTitle;
	private String notiContent;
	private String notiDate;
	private String notiStatus;

	public Notice() {}

	public Notice(int notiNo, String notiTitle, String notiContent, String notiDate, String notiStatus) {
		super();
		this.notiNo = notiNo;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiDate = notiDate;
		this.notiStatus = notiStatus;
	}

	// selectNoticeList용
	public Notice(int notiNo, String notiTitle, String notiContent, String notiDate) {
		super();
		this.notiNo = notiNo;
		this.notiTitle = notiTitle;
		this.notiContent = notiContent;
		this.notiDate = notiDate;
	}

	public int getNotiNo() {
		return notiNo;
	}

	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
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

	public String getNotiDate() {
		return notiDate;
	}

	public void setNotiDate(String notiDate) {
		this.notiDate = notiDate;
	}

	public String getNotiStatus() {
		return notiStatus;
	}

	public void setNotiStatus(String notiStatus) {
		this.notiStatus = notiStatus;
	}

	@Override
	public String toString() {
		return "Notice [notiNo=" + notiNo + ", notiTitle=" + notiTitle + ", notiContent=" + notiContent + ", notiDate="
				+ notiDate + ", notiStatus=" + notiStatus + "]";
	}



	
}
