package com.TidyGames.report.model.service;

import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.report.model.dao.ReportDao;
import com.TidyGames.report.model.vo.Report;


public class ReportService {
	
	public int selectBlockCount() {
		
		Connection conn = getConnection();
		
		int listCount = new ReportDao().selectBlockCount(conn);
			
		if(listCount > 0){
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return listCount;
	}

	
	
	public ArrayList<Report> blacklist(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Report> list = new ReportDao().blacklist(conn, pi);
		
		close(conn);
		return list;
		
	}
	
	

}
