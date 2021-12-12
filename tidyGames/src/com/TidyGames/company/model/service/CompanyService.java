package com.TidyGames.company.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.commit;
import static com.TidyGames.common.JDBCTemplate.getConnection;
import static com.TidyGames.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.company.model.dao.CompanyDao;
import com.TidyGames.company.model.vo.Company;

public class CompanyService {
	
	public int insertCompany(Company c) {
		Connection conn = getConnection();
		int result = new CompanyDao().insertCompany(conn, c);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public ArrayList<Company> selectCompanyList(){	
		Connection conn = getConnection();
		ArrayList<Company> list = new CompanyDao().selectCompanyList(conn);
		close(conn);
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
