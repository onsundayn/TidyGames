package com.TidyGames.report.model.service;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import com.TidyGames.report.model.dao.ReportDao;

public class ReportService {
	
	private Properties prop = new Properties();
	
	public ReportService() {
		
		try {
			prop.loadFromXML(new FileInputStream(ReportDao.class.getResource("/db/sql/Report-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	

}
