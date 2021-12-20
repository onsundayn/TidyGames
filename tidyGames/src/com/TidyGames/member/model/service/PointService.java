package com.TidyGames.member.model.service;

import static com.TidyGames.common.JDBCTemplate.close;
import static com.TidyGames.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.TidyGames.member.model.dao.PointDao;
import com.TidyGames.member.model.vo.Point;

public class PointService {

	public ArrayList<Point> selectPoint(int memNo) {

		Connection conn = getConnection();

		ArrayList<Point> point = new PointDao().selectPoint(conn, memNo);

		close(conn);

		return point;

	}

	public ArrayList<Point> selectSave(int memNo, String start, String end) {

		Connection conn = getConnection();

		ArrayList<Point> point = new PointDao().selectSave(conn, memNo, start, end);

		close(conn);

		return point;

	}

	public ArrayList<Point> selectUse(int memNo, String start, String end) {

		Connection conn = getConnection();

		ArrayList<Point> point = new PointDao().selectUse(conn, memNo, start, end);

		close(conn);

		return point;
	}

	
	public ArrayList<Point> selectOlddate(int memNo) {

		Connection conn = getConnection();

		ArrayList<Point> point = new PointDao().selectOlddate(conn, memNo);

		close(conn);

		return point;

	}
	public Point sumPoint(int memNo) {
		Connection conn = getConnection();
		
		Point sum = new PointDao().sumPoint(conn, memNo);
		
		close(conn);
		
		return sum;
		
		
		
		
	}
}
