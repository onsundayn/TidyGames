<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.TidyGames.company.model.vo.Company" %>
<%
	ArrayList<Company> list = (ArrayList<Company>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#listco{color:orange;}
	.navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
    .bar{float:left;}
    .outer{
	    background-color: #0e332c;
	    color:white;
	    width:1000px;
	    height:900px;
	    margin:auto;
	    margin-top:50px;
	    margin-left:300px;
    }
    h2{font-weight:normal;}
	th{width:150px;}
	td{text-align:center;}
	#check{
	    width:50px;
	}
	table {text-align:center;}
	#table{color:white;}
	#table>tbody>tr:hover{
        background:lightgrey;
    	color:black;
    	opacity:0.9;
    }
	#searchbtn{color:white; background:#0e332c; border:none;}
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp" %>
	<div class="navi"><%@ include file="../common/navibar.jsp" %></div>
    <div class="bar"><%@ include file="../common/adminSidebar.jsp" %></div>

	<div class="outer">
	    <h2>게임사 목록 조회</h2>
	    <br><br><br>
	    <form action="">
            <table align="center" class="table table-sm table-bordered" id="table">
                <thead>
                    <th>게임사</th>
                    <th>아이디</th>
                    <th>등록코드</th>
                    <th>상세조회 및 제공게임</th>
                    <th>등록일자</th>
                </thead>
                <tbody>
                	<% if(list.isEmpty()) { %>
	                    <tr>    
	                        <td colspan="5">조회된 게시글이 없습니다.</td>
	                    </tr>
                    <% }else { %>
                    	<% for(Company c : list) { %>
		                    <tr>
		                        <td><%=c.getCompanyName()%></td>
		                        <td><%=c.getCompanyId()%></td>
		                        <td><%=c.getCompanyPwd()%></td>
		                        <td><a href="<%= contextPath %>/detail.co" class="btn btn-sm btn-info">조회</a></td>
		                        <td><%=c.getCompanyEnroll()%></td>
		                    </tr>
                    	<% } %>
                    <% } %>
                </tbody>
            </table>
	
	    </form>
	
	    <br><br><br>
	
	    <div class="paging-area" align="center">
	
	        <button> &lt; </button>
	        <button>1</button>
	        <button>2</button>
	        <button>3</button>
	        <button>4</button>
	        <button>5</button>
	        <button>6</button>
	        <button>7</button>
	        <button>8</button>
	        <button>9</button>
	        <button>10</button>
	        <button> &gt; </button>
	
	    </div>
	    
	    <br><br>
	    
		<div class="search-area" align="center">
			<form>
				<input type="text" style="width:500px; height:30px;" placeholder="게임사 검색">
			    <button type="submit" id="searchbtn"><i class="fas fa-search"></i></button>			
			</form>
		</div>

	</div>
	
	
	
</body>
</html>