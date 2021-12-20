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
import java.io.UnsupportedEncodingException;
import java.util.Date;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import com.TidyGames.common.model.vo.PageInfo;
import com.TidyGames.member.model.vo.Member;
import com.TidyGames.member.model.vo.WishList;

public class MemberDao {

	private Properties prop = new Properties();
	
	public MemberDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public Member loginMember(Connection conn, String userId, String userPwd) {
		//select문 - 한행조회
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_pwd"),
							   rset.getString("mem_nick"),
							   rset.getString("mem_name"),
							   rset.getString("mem_birth"),
							   rset.getString("mem_phone"),
							   rset.getString("mem_email"),
							   rset.getString("mem_gender"),
							   rset.getString("mem_address"),
							   rset.getDate("mem_indate"),
							   rset.getString("mem_agr"),
							   rset.getString("mem_pic"),
							   rset.getString("mem_status"),
							   rset.getDate("mem_outdate"),
							   rset.getString("role_id"),
							   rset.getString("mem_access"),
							   rset.getDate("block_date"),
							   rset.getString("mem_cookie"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}
	
	public int cookieUpdateMem(Connection conn, String userId, String sessionId) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("cookieUpdateMem");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sessionId);
			pstmt.setString(2, userId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public Member loginMemByCookie(Connection conn, String sessionId) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginMemByCookie");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sessionId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_pwd"),
							   rset.getString("mem_nick"),
							   rset.getString("mem_name"),
							   rset.getString("mem_birth"),
							   rset.getString("mem_phone"),
							   rset.getString("mem_email"),
							   rset.getString("mem_gender"),
							   rset.getString("mem_address"),
							   rset.getDate("mem_indate"),
							   rset.getString("mem_agr"),
							   rset.getString("mem_pic"),
							   rset.getString("mem_status"),
							   rset.getDate("mem_outdate"),
							   rset.getString("role_id"),
							   rset.getString("mem_access"),
							   rset.getDate("block_date"),
							   rset.getString("mem_cookie"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}
		
	
	
		public ArrayList<Member> selectMember(Connection conn, PageInfo pi) {
			
			ArrayList<Member> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectMember");
			
			int startRow = (pi.getCurrentPage() - 1) * (pi.getViewLimit()) + 1;
			int endRow = startRow + pi.getViewLimit() - 1;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Member(rset.getInt("mem_no")
									  , rset.getString("mem_id")
									  , rset.getString("mem_nick")
									  , rset.getString("mem_name")
									  , rset.getString("mem_phone")
									  , rset.getString("mem_email")
									  , rset.getString("mem_gender")
									  , rset.getString("mem_address")
									  , rset.getDate("mem_indate")
									  , rset.getString("mem_status")));
				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return list;
			
			
			
	}
		public int selectMemberCount(Connection conn) {
			
			int listCount = 0;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectMemberCount");
			
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					listCount = rset.getInt("COUNT"); 
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} close(pstmt);
			
			return listCount;			
	}
		
		
		public int deleteMember(Connection conn, int memNo) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("deleteMember");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, memNo);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			
			return result;
			
		}
	
	public Member searchUserId(Connection conn, String searchName, String searchEmail) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchUserId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchName);
			pstmt.setString(2, searchEmail);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"));	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}
	
	public Member searchUserPwd(Connection conn, String searchId, String searchEmail) {
			
			Member m = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("searchUserPwd");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, searchId);
				pstmt.setString(2, searchEmail);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					m = new Member(rset.getInt("mem_no"),
								   rset.getString("mem_id"),
								   rset.getString("mem_pwd"));	
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return m;
			
		}
	
	public int checkNum(String searchEmail) {
		
		int num = (int)(Math.random() * 999999 + 100000);
		String user = "qng582@gmail.com";
		String password = "iwtbemjusxzzcfbl";
		
		Properties propNum = new Properties();
		propNum.put("mail.smtp.host", "smtp.gmail.com");
		propNum.put("mail.smtp.port", 465);
		propNum.put("mail.smtp.auth", "true");
		propNum.put("mail.smtp.ssl.enable", "true");
		propNum.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		Session session = Session.getDefaultInstance(propNum, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
		
		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(searchEmail)); 

            // Subject
            message.setSubject("TIDY GAMES 비밀번호 재설정 인증번호입니다."); //메일 제목을 입력

            // Text
            message.setText("인증번호: " + num);    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("메일 발송 성공!");
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }

		return num;
	}
	
	public int updatePwd(Connection conn, String userId, String updatePwd) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, updatePwd);
			pstmt.setString(2, userId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public int idCheck(Connection conn, String checkId) {
		
		//select문 --> 조회된 행수로 반환
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
		
	}
	
	public int nickCheck(Connection conn, String checkNick) {
		
		//select문 --> 조회된 행수로 반환
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("nickCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkNick);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
		
	}
	
}
