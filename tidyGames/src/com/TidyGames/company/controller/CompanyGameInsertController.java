package com.TidyGames.company.controller;

import java.io.IOException;

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
 * Servlet implementation class CompanyGameInsertController
 */
@WebServlet("/insert.gc")
public class CompanyGameInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyGameInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			// 최대사이즈
			int maxSize = 200*1024*1024;
			// 저장할경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/game_upfiles/");
			
			//파일명 수정 객체 나만의 FileRenamePolicy 클래스만들기
			//MultipartRequest변환  
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			// DB에 기록할 데이터 vo에 담기
			// GAME에 insert
			// 넘어온 파일 있을때만 UPLOAD_FILE에 insert
			String korName = multiRequest.getParameter("korName");
			String engName = multiRequest.getParameter("engName");
			String gameIntro = multiRequest.getParameter("content");
			String releaseDate = multiRequest.getParameter("releaseDate");
			int companyNo = Integer.parseInt(multiRequest.getParameter("cno"));
			int price = Integer.parseInt(multiRequest.getParameter("price"));
			
			Game ga = new Game();
			ga.setKorName(korName);
			ga.setEngName(engName);
			ga.setGameIntro(gameIntro);
			ga.setReleaseDate(releaseDate);
			ga.setPrice(price);
			ga.setCompanyNo(companyNo);
			
			Attachment3 at = null; // 초기화, 첨부파일 있을때만 생성
			// null일때 insert안함
			if(multiRequest.getOriginalFileName("titleFile") != null) { // 첨부파일 있을 경우
				at = new Attachment3();
				at.setOriginName(multiRequest.getOriginalFileName("titleFile"));
				at.setChangeName(multiRequest.getFilesystemName("titleFile"));
				at.setFilePath("resources/game_upfiles/");
				ga.setGameImg(multiRequest.getFilesystemName("titleFile"));
			}
			
			
			
			// 서비스요청
			int result = new GameService().insertGame(ga, at, companyNo);
			HttpSession session = request.getSession(); // 밑에서 두번쓸라구 선언
			// 응답뷰 지정
			if(result > 0) { // 성공 => 성공완료 메세지, 작성한 폼 그대로두고 페이지이동x
				
				session.setAttribute("alertMsg", "성공적으로 업로드 되었습니다.");
				response.sendRedirect(request.getContextPath() + "/gameList.gc");
				
			}else { // 실패 => 실패메세지, 폼초기화 후 다시 그 페이지 
				request.setAttribute("errorMsg", "게임 업로드 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				// ex)setAttribute로 값 전달하고  jsp에서는 그 값이 들어오면  페이지 이동없이 ajax로 폼 초기화 
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
