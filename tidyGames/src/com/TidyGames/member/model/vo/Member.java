package com.TidyGames.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memNick;
	private String memName;
	private String memBirth;
	private String memPhone;
	private String memEmail;
	private String memGender;
	private String memAddress;
	private Date indate;
	private String memAgr;
	private String memPic;
	private String memStatus;
	private Date memOutdate;
	private String roleId;
	private String memAccess;
	private Date blockDate;
	
	public Member() {}

	public Member(int memNo, String memId, String memPwd, String memNick, String memName, String memBirth,
			String memPhone, String memEmail, String memGender, String memAddress, Date indate, String memAgr,
			String memPic, String memStatus, Date memOutdate, String roleId, String memAccess, Date blockDate) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNick = memNick;
		this.memName = memName;
		this.memBirth = memBirth;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.memGender = memGender;
		this.memAddress = memAddress;
		this.indate = indate;
		this.memAgr = memAgr;
		this.memPic = memPic;
		this.memStatus = memStatus;
		this.memOutdate = memOutdate;
		this.roleId = roleId;
		this.memAccess = memAccess;
		this.blockDate = blockDate;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemNick() {
		return memNick;
	}

	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public Date getIndate() {
		return indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	public String getMemAgr() {
		return memAgr;
	}

	public void setMemAgr(String memAgr) {
		this.memAgr = memAgr;
	}

	public String getMemPic() {
		return memPic;
	}

	public void setMemPic(String memPic) {
		this.memPic = memPic;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	public Date getMemOutdate() {
		return memOutdate;
	}

	public void setMemOutdate(Date memOutdate) {
		this.memOutdate = memOutdate;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getMemAccess() {
		return memAccess;
	}

	public void setMemAccess(String memAccess) {
		this.memAccess = memAccess;
	}

	public Date getBlockDate() {
		return blockDate;
	}

	public void setBlockDate(Date blockDate) {
		this.blockDate = blockDate;
	}

	
	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memNick=" + memNick
				+ ", memName=" + memName + ", memBirth=" + memBirth + ", memPhone=" + memPhone + ", memEmail="
				+ memEmail + ", memGender=" + memGender + ", memAddress=" + memAddress + ", indate=" + indate
				+ ", memAgr=" + memAgr + ", memPic=" + memPic + ", memStatus=" + memStatus + ", memOutdate="
				+ memOutdate + ", roleId=" + roleId + ", memAccess=" + memAccess + ", blockDate=" + blockDate + "]";
	}
	

}
