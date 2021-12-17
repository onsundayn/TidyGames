package com.TidyGames.game.model.vo;

public class Review {
	
	private int reviewNo;
	private int gameNo;
	private int memNo;
	private String contents;
	private int recommend;
	private String uploadDate;
	private int starNo;
	private String reviewStatus;
	private String memNick;
	private String memPic;

	public Review () {}

	public Review(int reviewNo, int gameNo, int memNo, String contents, int recommend, String uploadDate, int starNo,
			String reviewStatus, String memNick, String memPic) {
		super();
		this.reviewNo = reviewNo;
		this.gameNo = gameNo;
		this.memNo = memNo;
		this.contents = contents;
		this.recommend = recommend;
		this.uploadDate = uploadDate;
		this.starNo = starNo;
		this.reviewStatus = reviewStatus;
		this.memNick = memNick;
		this.memPic = memPic;
	}
	
	

	public Review(int reviewNo, int gameNo, int memNo, String contents, int recommend, String uploadDate, int starNo,
			String memNick, String memPic) {
		super();
		this.reviewNo = reviewNo;
		this.gameNo = gameNo;
		this.memNo = memNo;
		this.contents = contents;
		this.recommend = recommend;
		this.uploadDate = uploadDate;
		this.starNo = starNo;
		this.memNick = memNick;
		this.memPic = memPic;
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

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
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

	public String getMemNick() {
		return memNick;
	}

	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}

	public String getMemPic() {
		return memPic;
	}

	public void setMemPic(String memPic) {
		this.memPic = memPic;
	}

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", gameNo=" + gameNo + ", memNo=" + memNo + ", contents=" + contents
				+ ", recommend=" + recommend + ", uploadDate=" + uploadDate + ", starNo=" + starNo + ", reviewStatus="
				+ reviewStatus + ", memNick=" + memNick + ", memPic=" + memPic + "]";
	}




	
}