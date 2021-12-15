package com.TidyGames.pay.model.vo;

public class Cart {
	
	private int memNo;
	private int gameNo;
	


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