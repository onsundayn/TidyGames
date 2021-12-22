package com.TidyGames.member.model.vo;

import java.sql.Date;

public class Point {

	private int memNo;
	private int pointAmount;
	private String pointDate;
	private String pointCotent;
	private int orderNo;
	private int sum;


	public Point() {}

	
	
	public Point(int sum) {
		super();
		
		this.sum = sum;
	}
	
	
	public Point(int memNo, int pointAmount, String pointDate, String pointCotent, int orderNo) {
		super();
		this.memNo = memNo;
		this.pointAmount = pointAmount;
		this.pointDate = pointDate;
		this.pointCotent = pointCotent;
		this.orderNo = orderNo;
	}
	
	public int getSum() {
		return sum;
	}



	public void setSum(int sum) {
		this.sum = sum;
	}



	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getPointAmount() {
		return pointAmount;
	}

	public void setPointAmount(int pointAmount) {
		this.pointAmount = pointAmount;
	}

	public String getPointDate() {
		return pointDate;
	}

	public void setPointDate(String pointDate) {
		this.pointDate = pointDate;
	}

	public String getPointCotent() {
		return pointCotent;
	}

	public void setPointCotent(String pointCotent) {
		this.pointCotent = pointCotent;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "Point [memNo=" + memNo + ", pointAmount=" + pointAmount + ", pointDate=" + pointDate + ", pointCotent="
				+ pointCotent + ", orderNo=" + orderNo + "]";
	}
	
	
	
}
