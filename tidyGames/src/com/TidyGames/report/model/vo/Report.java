package com.TidyGames.report.model.vo;

import java.sql.Date;

public class Report {
	
	private int reportNo;
	private int reportedMemNo;
	private int reportingMemNo;
	private int refPno;
	private int refRNo;
	private String reportSort;
	private Date reportDate;
	private String done;
	
	// DB 외 필드
	private String reportedId;
	private String reportedName;
	
	public Report() {}

	public Report(int reportNo, int reportedMemNo, int reportingMemNo, int refPno, int refRNo, String reportSort,
			Date reportDate, String done) {
		super();
		this.reportNo = reportNo;
		this.reportedMemNo = reportedMemNo;
		this.reportingMemNo = reportingMemNo;
		this.refPno = refPno;
		this.refRNo = refRNo;
		this.reportSort = reportSort;
		this.reportDate = reportDate;
		this.done = done;
	}
	
	

	public Report(int reportNo, String reportedId, String reportedName, String reportSort, Date reportDate) {
		super();
		this.reportNo = reportNo;
		this.reportedId = reportedId;
		this.reportedName = reportedName;
		this.reportSort = reportSort;
		this.reportDate = reportDate;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public int getReportedMemNo() {
		return reportedMemNo;
	}

	public void setReportedMemNo(int reportedMemNo) {
		this.reportedMemNo = reportedMemNo;
	}

	public int getReportingMemNo() {
		return reportingMemNo;
	}

	public void setReportingMemNo(int reportingMemNo) {
		this.reportingMemNo = reportingMemNo;
	}

	public int getRefPno() {
		return refPno;
	}

	public void setRefPno(int refPno) {
		this.refPno = refPno;
	}

	public int getRefRNo() {
		return refRNo;
	}

	public void setRefRNo(int refRNo) {
		this.refRNo = refRNo;
	}

	public String getReportSort() {
		return reportSort;
	}

	public void setReportSort(String reportSort) {
		this.reportSort = reportSort;
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
		return "Report [reportNo=" + reportNo + ", reportedMemNo=" + reportedMemNo + ", reportingMemNo="
				+ reportingMemNo + ", refPno=" + refPno + ", refRNo=" + refRNo + ", reportSort=" + reportSort
				+ ", reportDate=" + reportDate + ", done=" + done + "]";
	}
	
}
