package com.TidyGames.company.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.TidyGames.common.MyFileRenamePolicy;
import com.TidyGames.game.model.service.GameService;
import com.TidyGames.game.model.vo.Attachment3;
import com.TidyGames.game.model.vo.Game;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class CompanyGameUpdateController
 */
@WebServlet("/update.gc")
public class CompanyGameUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyGameUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 600 * 1024 * 1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/game_upfiles/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			int gameNo = Integer.parseInt(multiRequest.getParameter("gno"));
			String category = multiRequest.getParameter("category");
			String korName = multiRequest.getParameter("korName");
			String engName = multiRequest.getParameter("engName");
			String gameIntro = multiRequest.getParameter("content");
			String gameImg = multiRequest.getFilesystemName("gameImg");
			int price = Integer.parseInt(multiRequest.getParameter("price"));
			int companyNo = Integer.parseInt(multiRequest.getParameter("cno"));
			
			
			Game ga = new Game();
			ga.setGameNo(gameNo);
			ga.setKorName(korName);
			ga.setEngName(engName);
			ga.setGameIntro(gameIntro);
			ga.setPrice(price);
			ga.setCompanyNo(companyNo);
			ga.setGameImg(gameImg);
			// Attachment에 여러번 INSERT
			ArrayList<Attachment3> list = new ArrayList<>();
			
			for(int i=1; i<=6; i++) {
				String key = "file" + 1; // name이 file1,2,3,4라서 key에 순서대로 담는거임
				
				if(multiRequest.getOriginalFileName(key) != null) {
					// Attachment3생성 + 원본명, 수정명, 폴더경로, 파일레벨 담아서 list에 쌓기
					Attachment3 at = new Attachment3();
					at.setOriginName(multiRequest.getOriginalFileName(key));
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/game_upfiles/");
					
					if(i == 6) { // 대표이미지일경우
						at.setFileLevel(1);
					}else if(i == 1) { // 동영상일경우
						at.setFileLevel(3);
					}else { //상세이미지일경우
						at.setFileLevel(2);
					}
					
					if(multiRequest.getParameter("originFileNo") != null) {
						// 기존의 첨부파일 있었을 경우 => Update
						at.setFileNo(Integer.parseInt(multiRequest.getParameter("originFileNo")));
						
					}else {
						// 없었을경우 => Insert
						at.setRefBoardNo(gameNo);
					}
					
					list.add(at);
				}
			}
			
			int result = new GameService().updateGame(ga, list);
			
			/*
			Attachment3 at = null;
			
			if(multiRequest.getOriginalFileName("titleFile") != null) { // 첨부파일 있을 경우
				at = new Attachment3();
				at.setOriginName(multiRequest.getOriginalFileName("titleFile"));
				at.setChangeName(multiRequest.getFilesystemName("titleFile"));
				at.setFilePath("resources/game_upfiles/");
				ga.setGameImg(multiRequest.getFilesystemName("titleFile"));
				
				if(multiRequest.getParameter("originFileNo") != null) {
					// 기존의 첨부파일 있었을 경우 => Update
					at.setFileNo(Integer.parseInt(multiRequest.getParameter("originFileNo")));
					
				}else {
					// 없었을경우 => Insert
					at.setRefBoardNo(gameNo);
				}
				
				// 새로 넘어온 파일 없으면 null
				
				int result = new GameService().updateGame(ga, at);
				*/
				HttpSession session = request.getSession();
				if(result > 0) { //성공메세지
					session.setAttribute("alertMsg", "성공적으로 업로드 되었습니다.");
					response.sendRedirect(request.getContextPath() + "/gameList.gc");

				}else { // 
					
					for(Attachment3 at : list) {
						if(at != null) {
							new File(savePath + at.getChangeName()).delete();
						}
					}
					request.setAttribute("errorMsg", "게임 업데이트 실패");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				}
				
				
			}
			
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
