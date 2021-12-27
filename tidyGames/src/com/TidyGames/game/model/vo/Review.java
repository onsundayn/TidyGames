package com.TidyGames.game.model.vo;

public class Review {
	
	private int reviewNo;
	private int gameNo;
	private String writer;
	private String contents;
	private int recommend;
	private String uploadDate;
	private int starNo;
	private String reviewStatus;
	
	public Review () {}
	
	public Review(int reviewNo, int gameNo, String writer, String contents, int recommend, String uploadDate,
			int starNo, String reviewStatus) {
		super();
		this.reviewNo = reviewNo;
		this.gameNo = gameNo;
		this.writer = writer;
		this.contents = contents;
		this.recommend = recommend;
		this.uploadDate = uploadDate;
		this.starNo = starNo;
		this.reviewStatus = reviewStatus;
	}
	
	

	public Review(int reviewNo, int gameNo, String writer, String contents, String uploadDate) {
		super();
		this.reviewNo = reviewNo;
		this.gameNo = gameNo;
		this.writer = writer;
		this.contents = contents;
		this.uploadDate = uploadDate;
	}
	
	

	public Review(int reviewNo, int gameNo, String writer, String contents, String uploadDate, int starNo) {
		super();
		this.reviewNo = reviewNo;
		this.gameNo = gameNo;
		this.writer = writer;
		this.contents = contents;
		this.uploadDate = uploadDate;
		this.starNo = starNo;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getGameNo() {
		return gameNo;
	}

	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public String getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}

	public int getStarNo() {
		return starNo;
	}

	public void setStarNo(int starNo) {
		this.starNo = starNo;
	}

	public String getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", gameNo=" + gameNo + ", writer=" + writer + ", contents=" + contents
				+ ", recommend=" + recommend + ", uploadDate=" + uploadDate + ", starNo=" + starNo + ", reviewStatus="
				+ reviewStatus + "]";
	}
	
	
	

		
	
}