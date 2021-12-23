package com.TidyGames.member.model.dao;

import static com.TidyGames.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.TidyGames.member.model.vo.Point;
import com.TidyGames.member.model.vo.WishList;

public class PointDao {

	private Properties prop = new Properties();

	public PointDao() {

		try {
			prop.loadFromXML(new FileInputStream(MemberDao.class.getResource("/db/sql/point-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<Point> selectPoint(Connection conn, int memNo) {

		ArrayList<Point> point = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPoint");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, memNo);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				point.add(new Point(rset.getInt("mem_no"), 
									rset.getInt("point_amount"), 
									rset.getString("point_date"),
									rset.getString("point_content"), 
									rset.getInt("order_no")));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return point;
	}
	
	public ArrayList<Point> selectAllPoint(Connection conn, int memNo, String start, String end) {

		ArrayList<Point> point = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllPoint");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, memNo);
			pstmt.setString(2, start);
			pstmt.setString(3, end);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				point.add(new Point(rset.getInt("mem_no"), 
									rset.getInt("point_amount"), 
									rset.getString("point_date"),
									rset.getString("point_content"), 
									rset.getInt("order_no")));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return point;
	}


	public ArrayList<Point> selectSave(Connection conn, int memNo, String start, String end) {

		ArrayList<Point> point = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectSave");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, memNo);
			pstmt.setString(2, start);
			pstmt.setString(3, end);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				point.add(new Point(rset.getInt("mem_no"), 
									rset.getInt("point_amount"), 
									rset.getString("point_date"),
									rset.getString("point_content"), 
									rset.getInt("order_no")));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return point;
	}

	public ArrayList<Point> selectUse(Connection conn, int memNo, String start, String end) {

		ArrayList<Point> point = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectUse");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, memNo);
			pstmt.setString(2, start);
			pstmt.setString(3, end);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				point.add(new Point(rset.getInt("mem_no"), 
									rset.getInt("point_amount"), 
									rset.getString("point_date"),
									rset.getString("point_content"), 
									rset.getInt("order_no")));
						}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return point;
	}

	
	public ArrayList<Point> selectOlddate(Connection conn, int memNo) {

		ArrayList<Point> point = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOlddate");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, memNo);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				point.add(new Point(rset.getInt("mem_no"), 
									rset.getInt("point_amount"), 
									rset.getString("point_date"),
									rset.getString("point_content"), 
									rset.getInt("order_no")));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return point;
	}
	
	
	public Point sumPoint(Connection conn, int memNo) {
		
		Point sum = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("sumPoint");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				sum = new Point(rset.getInt("sum"));
						
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return sum;
		
	}
	
	
	public ArrayList<Point> adPointList(Connection conn) {
		

		ArrayList<Point> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("adPointList");

		try {
			pstmt = conn.prepareStatement(sql);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Point(rset.getInt("mem_no"),
								   rset.getString("mem_id"),
								   rset.getInt("sum")));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
		
	}
	
	

}
