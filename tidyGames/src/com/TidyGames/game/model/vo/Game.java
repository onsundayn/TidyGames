package com.TidyGames.game.model.vo;

import java.sql.Date;

public class Game {
	
	private int gameNo;
	private int companyNo;
	private String korName;
	private String engName;
	private Date releaswDate;
	private int price;
	private String gameIntro;
	private String confirm;
	private String update;
	private Date uploadDate; 
	private double point;
	private String gameStatus;
	private String gameImg;
	
	public Game () {}

	public Game(int gameNo, int companyNo, String korName, String engName, Date releaswDate, int price,
			String gameIntro, String confirm, String update, Date uploadDate, double point, String gameStatus,
			String gameImg) {
		super();
		this.gameNo = gameNo;
		this.companyNo = companyNo;
		this.korName = korName;
		this.engName = engName;
		this.releaswDate = releaswDate;
		this.price = price;
		this.gameIntro = gameIntro;
		this.confirm = confirm;
		this.update = update;
		this.uploadDate = uploadDate;
		this.point = point;
		this.gameStatus = gameStatus;
		this.gameImg = gameImg;
	}

	public int getGameNo() {
		return gameNo;
	}

	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}

	public String getKorName() {
		return korName;
	}

	public void setKorName(String korName) {
		this.korName = korName;
	}

	public String getEngName() {
		return engName;
	}

	public void setEngName(String engName) {
		this.engName = engName;
	}

	public Date getReleaswDate() {
		return releaswDate;
	}

	public void setReleaswDate(Date releaswDate) {
		this.releaswDate = releaswDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getGameIntro() {
		return gameIntro;
	}

	public void setGameIntro(String gameIntro) {
		this.gameIntro = gameIntro;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public String getUpdate() {
		return update;
	}

	public void setUpdate(String update) {
		this.update = update;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public double getPoint() {
		return point;
	}

	public void setPoint(double point) {
		this.point = point;
	}

	public String getGameStatus() {
		return gameStatus;
	}

	public void setGameStatus(String gameStatus) {
		this.gameStatus = gameStatus;
	}

	public String getGameImg() {
		return gameImg;
	}

	public void setGameImg(String gameImg) {
		this.gameImg = gameImg;
	}

	@Override
	public String toString() {
		return "Game [gameNo=" + gameNo + ", companyNo=" + companyNo + ", korName=" + korName + ", engName=" + engName
				+ ", releaswDate=" + releaswDate + ", price=" + price + ", gameIntro=" + gameIntro + ", confirm="
				+ confirm + ", update=" + update + ", uploadDate=" + uploadDate + ", point=" + point + ", gameStatus="
				+ gameStatus + ", gameImg=" + gameImg + "]";
	}
	
	

}
