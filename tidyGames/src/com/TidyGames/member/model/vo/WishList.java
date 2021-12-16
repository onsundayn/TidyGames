package com.TidyGames.member.model.vo;

public class WishList {

	private int gameNo;
	private int memNo;
	private String korName;
	private String releaseDate;
	private int price;
	
	
	private WishList() {}
	
	
	
	public WishList(int gameNo, int memNo, String korName, String releaseDate, int price) {
		super();
		this.gameNo = gameNo;
		this.memNo = memNo;
		this.korName = korName;
		this.releaseDate = releaseDate;
		this.price = price;
	}



	public int getGameNo() {
		return gameNo;
	}



	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}



	public int getMemNo() {
		return memNo;
	}



	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}



	public String getKorName() {
		return korName;
	}



	public void setKorName(String korName) {
		this.korName = korName;
	}



	public String getReleaseDate() {
		return releaseDate;
	}



	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	@Override
	public String toString() {
		return "WishList [gameNo=" + gameNo + ", memNo=" + memNo + ", korName=" + korName + ", releaseDate="
				+ releaseDate + ", price=" + price + "]";
	}
	
	
	
	
	
	
}
