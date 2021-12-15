package com.TidyGames.pay.model.vo;

public class Cart {
	
	private int memNo;
	private int gameNo;
	private String gameImg;
	private String korName;
	private String engName;
	private String gameIntro;
	private int price;
	private int point;
	private String memNick;
	


public String getMemNick() {
		return memNick;
	}



	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}



public Cart(int memNo, int gameNo, String gameImg, String korName, String engName, String gameIntro, int price,
			int point, String memNick) {
		super();
		this.memNo = memNo;
		this.gameNo = gameNo;
		this.gameImg = gameImg;
		this.korName = korName;
		this.engName = engName;
		this.gameIntro = gameIntro;
		this.price = price;
		this.point = point;
		this.memNick = memNick;
	}



public String getGameImg() {
		return gameImg;
	}



	public void setGameImg(String gameImg) {
		this.gameImg = gameImg;
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



	public String getGameIntro() {
		return gameIntro;
	}



	public void setGameIntro(String gameIntro) {
		this.gameIntro = gameIntro;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public int getPoint() {
		return point;
	}



	public void setPoint(int point) {
		this.point = point;
	}



public Cart() {}



public Cart(int memNo, int gameNo) {
	super();
	this.memNo = memNo;
	this.gameNo = gameNo;
}



public int getMemNo() {
	return memNo;
}



public void setMemNo(int memNo) {
	this.memNo = memNo;
}



public int getGameNo() {
	return gameNo;
}



public void setGameNo(int gameNo) {
	this.gameNo = gameNo;
}



@Override
public String toString() {
	return "Cart [memNo=" + memNo + ", gameNo=" + gameNo + "]";
}

	




}