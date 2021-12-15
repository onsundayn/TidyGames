package com.TidyGames.pay.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class PayDao {
	
	private Properties prop = new Properties();
	
	public PayDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(PayDao.class.getResource("/db/sql/pay-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
