package com.TidyGames.company.model.vo;

public class GameQna {
	
	private int gqnaNo;
	private int memNo;
	private int companyNo;
	private String gqnaTitle;
	private String gqnaContent;
	private String gqnaDate;
	private String gqnaAnswer;
	private String gqnaCheck;
	private String gqnaAnswerDate;
	private String gqnaStatus;
	private int gameNo;
	
	public GameQna() {}

	public GameQna(int gqnaNo, int memNo, int companyNo, String gqnaTitle, String gqnaContent, String gqnaDate,
			String gqnaAnswer, String gqnaCheck, String gqnaAnswerDate, String gqnaStatus, int gameNo) {
		super();
		this.gqnaNo = gqnaNo;
		this.memNo = memNo;
		this.companyNo = companyNo;
		this.gqnaTitle = gqnaTitle;
		this.gqnaContent = gqnaContent;
		this.gqnaDate = gqnaDate;
		this.gqnaAnswer = gqnaAnswer;
		this.gqnaCheck = gqnaCheck;
		this.gqnaAnswerDate = gqnaAnswerDate;
		this.gqnaStatus = gqnaStatus;
		this.gameNo = gameNo;
	}

	public int getGqnaNo() {
		return gqnaNo;
	}

	public void setGqnaNo(int gqnaNo) {
		this.gqnaNo = gqnaNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}

	public String getGqnaTitle() {
		return gqnaTitle;
	}

	public void setGqnaTitle(String gqnaTitle) {
		this.gqnaTitle = gqnaTitle;
	}

	public String getGqnaContent() {
		return gqnaContent;
	}

	public void setGqnaContent(String gqnaContent) {
		this.gqnaContent = gqnaContent;
	}

	public String getGqnaDate() {
		return gqnaDate;
	}

	public void setGqnaDate(String gqnaDate) {
		this.gqnaDate = gqnaDate;
	}

	public String getGqnaAnswer() {
		return gqnaAnswer;
	}

	public void setGqnaAnswer(String gqnaAnswer) {
		this.gqnaAnswer = gqnaAnswer;
	}

	public String getGqnaCheck() {
		return gqnaCheck;
	}

	public void setGqnaCheck(String gqnaCheck) {
		this.gqnaCheck = gqnaCheck;
	}

	public String getGqnaAnswerDate() {
		return gqnaAnswerDate;
	}

	public void setGqnaAnswerDate(String gqnaAnswerDate) {
		this.gqnaAnswerDate = gqnaAnswerDate;
	}

	public String getGqnaStatus() {
		return gqnaStatus;
	}

	public void setGqnaStatus(String gqnaStatus) {
		this.gqnaStatus = gqnaStatus;
	}

	public int getGameNo() {
		return gameNo;
	}

	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}

	@Override
	public String toString() {
		return "GameQna [gqnaNo=" + gqnaNo + ", memNo=" + memNo + ", companyNo=" + companyNo + ", gqnaTitle="
				+ gqnaTitle + ", gqnaContent=" + gqnaContent + ", gqnaDate=" + gqnaDate + ", gqnaAnswer=" + gqnaAnswer
				+ ", gqnaCheck=" + gqnaCheck + ", gqnaAnswerDate=" + gqnaAnswerDate + ", gqnaStatus=" + gqnaStatus
				+ ", gameNo=" + gameNo + "]";
	}
	
	
	
}
