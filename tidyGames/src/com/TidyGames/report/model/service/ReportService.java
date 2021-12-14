package com.TidyGames.report.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.report.model.dao.ReportDao;
import com.TidyGames.report.model.vo.Report;


public class ReportService {

public ArrayList<Report> blacklist() {
		
		Connection conn = getConnection();
		
		ArrayList<Report> list = new ReportDao().blacklist(conn);
		
		close(conn);
		return list;
		
	}
	
	

}
