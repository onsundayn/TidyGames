package com.TidyGames.company.model.service;

import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;

import com.TidyGames.company.model.dao.CompanyDao;
import com.TidyGames.company.model.vo.Company;

public class CompanyService {
	
	public Company selectCompany(int comNo) {
		
		Connection conn = getConnection();
		Company c = new CompanyDao().selectCompany(conn, comNo);
		close(conn);
		return c;
	}

}
