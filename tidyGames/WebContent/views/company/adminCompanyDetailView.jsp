<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.TidyGames.company.model.vo.Company"%>
<%
	Company c = (Company)request.getAttribute("company");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#listco {
	color: orange;
}
div {
	box-sizing: border-box;
}

#outer {
	width: 1500px;
	margin: auto;
	color: white;
}

#outer>div {
	float: left;
}

#line_1 {
	width: 100%;
	height: 2px;
	background: rgba(255, 255, 255, 0.555);
}

#detail-area {
	margin-top: 50px;
	margin-left: 150px;
	width: 1000px;
}

#gametable {
	text-align: center;
	color: white;
}

#gametable>tbody>tr:hover {
	background: lightgrey;
	color: black;
}
</style>
</head>
<body>

	<%@ include file="../common/topbar.jsp"%>
	<%@ include file="../common/navibar.jsp"%>

	<div id="outer">

		<div id="line_1"></div>
		<div>
			<%@ include file="../common/adminSidebar.jsp"%>
		</div>

		<div id="detail-area">
			<h2>게임사 상세 조회</h2>
			<br>
			<div align="right" style="width: 1000px">
				<button type="button" onclick="history.back();" class="btn btn-sm btn-secondary">뒤로가기</button>
				<a href="<%= contextPath %>/updateForm.co?num=<%= c.getCompanyNo() %>" class="btn btn-sm btn-success">수정</a> 
				<a href="<%= contextPath %>/delete.co?num=<%= c.getCompanyNo() %>"class="btn btn-sm btn-danger">삭제</a>
			</div>
			<br>
			<table>
				<tr>
					<th width="100"><h4>게임사</h4></th>
					<td><h5><%=c.getCompanyName()%></h5></td>
				</tr>
				<tr>
					<td colspan=2 height="20"></td>
				</tr>
				<tr>
					<th><h4>아이디</h4></th>
					<td><h5><%=c.getCompanyId()%></h5></td>
				</tr>
				<tr>
					<td colspan=2 height="20"></td>
				</tr>
				<tr>
					<th><h4>등록코드</h4></th>
					<td><h5><%=c.getCompanyPwd()%></h5></td>
				</tr>
				<tr>
					<td colspan=2 height="20"></td>
				</tr>
				<tr>
					<th><h4>대표자</h4></th>
					<td><h5><%=c.getCompanyHead()%></h5></td>
				</tr>
				<tr>
					<td colspan=2 height="20"></td>
				</tr>
				<tr>
					<th style="display: flow-root;"><h4>코멘트</h4></th>
					<td>
						<% if(c.getCompanyComment() != null) {%>
							<p><%=c.getCompanyComment()%></p> <% 
						} else { %>
							<p>등록된 코멘트가 없습니다</p> 
						<% } %>
					</td>
				</tr>
				<tr>
					<td colspan=2 height="20"></td>
				</tr>
				<tr>
					<th><h4>제공게임</h4></th>
					<td></td>
				</tr>
			</table>
			<br>
			<div class="gametb" style="size: auto">
				<table class="table table-sm" id="gametable">
					<thead style="background: rgb(80, 88, 83)">
						<th width="100">게임</th>
						<th width="100">출시일</th>
						<th width="100">장르</th>
						<th width="150">게임상세페이지</th>
					</thead>
					<tbody>
						<tr>
							<td colspan="4">등록된 게임이 없습니다</td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
						<tr>
							<td>A게임</td>
							<td>2021-12-08</td>
							<td>공포</td>
							<td><a href="" class="btn btn-sm btn-info">조회</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>