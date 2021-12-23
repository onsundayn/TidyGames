<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.TidyGames.post.model.vo.Post, com.TidyGames.common.model.vo.PageInfo,
				 com.TidyGames.post.model.vo.PostFile, java.util.ArrayList"
%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#notice {
	color: orange;
}

.include-area {
	width: 1500px;
	margin: auto;
	align: center;
	border-bottom: 2px solid rgba(255, 255, 255, 0.555);
}

.outer {
	size: auto;
	background-color: #0e332c;
	color: white;
	width: 1200px;
	margin: auto;
	margin-top: 50px;
}

.underline {
	border-bottom: 2px solid rgba(83, 79, 79, 0.333);
}

.view-form {
	size: auto;
	background-color: lightgray;
	width: 1200px;
	margin: auto;
}

#read-form {
	margin: auto;
	width: 1100px;
}

#enroll-form input, #enroll-form textarea {
	width: 100%;
	box-sizing: border-box;
}

table {
	color: black;
}
.like {
	cursor:pointer;
}
</style>
</head>
<body style="background-color: #0e332c;">

	<div class="include-area">
		<%@ include file="../common/topbar.jsp"%>
		<%@ include file="../common/navibar.jsp"%>
	</div>
	
	<div class="outer">

		<h2>
			TIDY NOTICE</i>
		</h2>
		
		<br>
		<div align="right">
			<% if(loginUser != null && loginUser.getRoleId().equals("A")) { %>
				<a href="" class="btn btn-sm btn-info">수정</a> 
				<a href="" class="btn btn-sm btn-danger">삭제</a>
			<% } %>
		</div>
		
		<br>
		<div class="view-form">
			<br><br>
			<div id="read-form">

				<div class="underline">
					<table>
						<tr>
							<th width="60"><h5>제목</h5></th>
							<td width="1000"><h6></h6></td>
						</tr>
						<tr><td colspan="2" height="20"></td></tr>
						<tr>
							<th width="70">작성일</th>
							<td width="200"></td>
						</tr>
						<tr><td colspan="2" height="20"></td></tr>
					</table>
				</div>

				<div class="underline">
					<table>
						<tr><td colspan="2" height="20"></td></tr>
						<tr>
							<th width="50" style="display: flow-root"><h5>내용</h5></th>
							<td>
								<pre width="1000" height="20000"></pre>
							</td>
						</tr>
						<!-- 일단 여기까지 -->
						<tr>
							<th></th>
							<td colspan="2"></td>
						</tr>
						<tr>
							<td colspan="2" height="20"></td>
						</tr>
					</table>
					<!-- 첨부파일 관련 1 -->
				 </div>

				<br>
			</div><!-- read-form -->
		</div><!-- view-form -->
	</div><!-- outer -->
	<br>
	<!-- 첨부파일 관련 2 -->
	<br>
	<br>

</body>
</html>