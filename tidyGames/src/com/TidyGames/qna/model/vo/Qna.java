package com.TidyGames.qna.model.vo;

public class Qna {
   
   private int qnaNo;
   private int memNo;
   private int companyNo;
   private String qnaTitle;
   private String qnaContent;
   private String qnaDate;
   private String qnaAnswer;
   private String qnaCheck;
   private String qnaAnswerDate;
   private String qnaStatus;
   private int gameNo;
   private String gameName;
   private String memId;
   private String memNick;
   
   public Qna() {}

public Qna(int qnaNo, int memNo, int companyNo, String qnaTitle, String qnaContent, String qnaDate, String qnaAnswer,
		String qnaCheck, String qnaAnswerDate, String qnaStatus, int gameNo, String gameName, String memId,
		String memNick) {
	super();
	this.qnaNo = qnaNo;
	this.memNo = memNo;
	this.companyNo = companyNo;
	this.qnaTitle = qnaTitle;
	this.qnaContent = qnaContent;
	this.qnaDate = qnaDate;
	this.qnaAnswer = qnaAnswer;
	this.qnaCheck = qnaCheck;
	this.qnaAnswerDate = qnaAnswerDate;
	this.qnaStatus = qnaStatus;
	this.gameNo = gameNo;
	this.gameName = gameName;
	this.memId = memId;
	this.memNick = memNick;
}

public int getQnaNo() {
	return qnaNo;
}

public void setQnaNo(int qnaNo) {
	this.qnaNo = qnaNo;
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

public String getQnaTitle() {
	return qnaTitle;
}

public void setQnaTitle(String qnaTitle) {
	this.qnaTitle = qnaTitle;
}

public String getQnaContent() {
	return qnaContent;
}

public void setQnaContent(String qnaContent) {
	this.qnaContent = qnaContent;
}

public String getQnaDate() {
	return qnaDate;
}

public void setQnaDate(String qnaDate) {
	this.qnaDate = qnaDate;
}

public String getQnaAnswer() {
	return qnaAnswer;
}

public void setQnaAnswer(String qnaAnswer) {
	this.qnaAnswer = qnaAnswer;
}

public String getQnaCheck() {
	return qnaCheck;
}

public void setQnaCheck(String qnaCheck) {
	this.qnaCheck = qnaCheck;
}

public String getQnaAnswerDate() {
	return qnaAnswerDate;
}

public void setQnaAnswerDate(String qnaAnswerDate) {
	this.qnaAnswerDate = qnaAnswerDate;
}

public String getQnaStatus() {
	return qnaStatus;
}

public void setQnaStatus(String qnaStatus) {
	this.qnaStatus = qnaStatus;
}

public int getGameNo() {
	return gameNo;
}

public void setGameNo(int gameNo) {
	this.gameNo = gameNo;
}

public String getGameName() {
	return gameName;
}

public void setGameName(String gameName) {
	this.gameName = gameName;
}

public String getMemId() {
	return memId;
}

public void setMemId(String memId) {
	this.memId = memId;
}

public String getMemNick() {
	return memNick;
}

public void setMemNick(String memNick) {
	this.memNick = memNick;
}

@Override
public String toString() {
	return "Qna [qnaNo=" + qnaNo + ", memNo=" + memNo + ", companyNo=" + companyNo + ", qnaTitle=" + qnaTitle
			+ ", qnaContent=" + qnaContent + ", qnaDate=" + qnaDate + ", qnaAnswer=" + qnaAnswer + ", qnaCheck="
			+ qnaCheck + ", qnaAnswerDate=" + qnaAnswerDate + ", qnaStatus=" + qnaStatus + ", gameNo=" + gameNo
			+ ", gameName=" + gameName + ", memId=" + memId + ", memNick=" + memNick + "]";
}

   
   
   
}