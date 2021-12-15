package com.TidyGames.report.model.vo;

import java.sql.Date;

public class Report {
	
	private int reportNo;
	private String reported;
	private String reporting;
	private String post;
	private String reply;
	private String reportSort;
	private String etc;
	private Date reportDate;
	private String done;
	
	// DB 외 필드
	private String reportedId;
	private String reportedName;
	
	public Report() {}


	public Report(int reportNo, String reported, String reporting, String post, String reply, String reportSort,
			String etc, Date reportDate, String done, String reportedId, String reportedName) {
		super();
		this.reportNo = reportNo;
		this.reported = reported;
		this.reporting = reporting;
		this.post = post;
		this.reply = reply;
		this.reportSort = reportSort;
		this.etc = etc;
		this.reportDate = reportDate;
		this.done = done;
		this.reportedId = reportedId;
		this.reportedName = reportedName;
	}

	public Report(int reportNo, String reportedId, String reportedName, String reportSort, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.reportedId = reportedId;
		this.reportedName = reportedName;
		this.reportSort = reportSort;
		this.reportDate = reportDate;
	}
	
	
	public Report(int reportNo, String reported, String reporting, String post, String reply, String reportSort,
			String etc, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.reported = reported;
		this.reporting = reporting;
		this.post = post;
		this.reply = reply;
		this.reportSort = reportSort;
		this.etc = etc;
		this.reportDate = reportDate;
	}


	public int getReportNo() {
		return reportNo;
	}


	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}


	public String getReported() {
		return reported;
	}


	public void setReported(String reported) {
		this.reported = reported;
	}


	public String getReporting() {
		return reporting;
	}


	public void setReporting(String reporting) {
		this.reporting = reporting;
	}


	public String getPost() {
		return post;
	}


	public void setPost(String post) {
		this.post = post;
	}


	public String getReply() {
		return reply;
	}


	public void setReply(String reply) {
		this.reply = reply;
	}


	public String getReportSort() {
		return reportSort;
	}


	public void setReportSort(String reportSort) {
		this.reportSort = reportSort;
	}


	public String getEtc() {
		return etc;
	}


	public void setEtc(String etc) {
		this.etc = etc;
	}


	public Date getReportDate() {
		return reportDate;
	}


	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}


	public String getDone() {
		return done;
	}


	public void setDone(String done) {
		this.done = done;
	}


	public String getReportedId() {
		return reportedId;
	}


	public void setReportedId(String reportedId) {
		this.reportedId = reportedId;
	}


	public String getReportedName() {
		return reportedName;
	}


	public void setReportedName(String reportedName) {
		this.reportedName = reportedName;
	}


	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", reported=" + reported + ", reporting=" + reporting + ", post=" + post
				+ ", reply=" + reply + ", reportSort=" + reportSort + ", etc=" + etc + ", reportDate=" + reportDate
				+ ", done=" + done + ", reportedId=" + reportedId + ", reportedName=" + reportedName + "]";
	}

}
