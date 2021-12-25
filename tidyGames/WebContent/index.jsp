<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #0e332c;">
	
	<h3><a href="<%= request.getContextPath() %>/memberList.me?cpage=1" style="color:black">관리자메인화면</a></h3>
	<%@ include file="views/common/imgSlider.jsp" %>
	<%@ include file="views/common/categorybar.jsp" %>
	<%@ include file="views/common/navibar.jsp" %>
	<%@ include file="views/common/content.jsp" %>
	
</body>
</html>