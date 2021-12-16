package com.TidyGames.company.model.service;

import static com.TidyGames.common.JDBCTemplate.*;

import java.sql.Connection;

import com.TidyGames.company.model.dao.LoginCompanyDao;
import com.TidyGames.company.model.vo.Company;

public class LoginCompanyService {

	public Company loginCompany(String userId, String userPwd) {
		
		Connection conn = getConnection();
		Company c = new LoginCompanyDao().loginCompany(conn, userId, userPwd);
		
		close(conn);
		
		return c;
	}
	
}
