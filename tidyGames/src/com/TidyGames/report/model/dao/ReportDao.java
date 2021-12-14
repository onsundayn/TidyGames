package com.TidyGames.report.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ReportDao {
	
	private Properties prop = new Properties();
	
	public ReportDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(ReportDao.class.getResource("/db/sql/report-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	

}
