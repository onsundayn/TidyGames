<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #0e332c;">
	
	<h3><a href="<%= request.getContextPath() %>/memberList.me" style="color:black">관리자메인화면</a></h3>
	<%@ include file="views/common/slideTest.jsp" %>
	<%@ include file="views/common/categorybar.jsp" %>
	<%@ include file="views/common/navibar.jsp" %>
	<%@ include file="views/common/content.jsp" %>
	<h5><a href="<%= request.getContextPath() %>/logout.me" style="color:white">게임사로그아웃임시버튼(게임사로 로그인 되어있을때만 누를것 아니면 오류날지도)</a></h5>
	
</body>
</html>