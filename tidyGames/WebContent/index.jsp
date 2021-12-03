<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width: 1200px;
		height: 1200px;
		margin: auto;
	}

	#content{
		height: 40%;
	}

	#content_1>a{
		color: white;
		text-decoration: none;
		font-size: 18px;
		font-weight: 500;
		margin: 10px;
	}

	#content_2>span{
		margin: 10px;
	}
</style>
</head>
<body style="background-color: #0e332c;">
	
	<%@ include file="views/common/topbar.jsp" %>
	<%@ include file="views/common/imageMenubar.jsp"%>
	<%@ include file="views/common/navibar.jsp" %>

	<div class="outer">


		<div id="content" align="center">
			<div id="content_1">
				<a href="">NEW</a>
				<a href="">RANK</a>
				<a href="">SALE</a>
				<a href="">FREE</a>
			</div>
			<div id="content_2">
				<span id="content_game_1">
					<img src="" width="300px" height="150px">
				</span>
				<span id="content_game_2">
					<img src="" width="300px" height="150px">
				</span>
				<span id="content_game_3">
					<img src="" width="300px" height="150px">
				</span>
			</div>
		</div>

	</div>
</body>
</html>