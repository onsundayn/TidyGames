package com.TidyGames.faq.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import com.TidyGames.notice.model.dao.NoticeDao;

public class FaqDao {

	private Properties prop = new Properties();
	
	public FaqDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(FaqDao.class.getResource("/db/sql/faq-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
}
