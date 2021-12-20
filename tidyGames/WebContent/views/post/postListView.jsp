<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.TidyGames.common.model.vo.PageInfo, java.util.ArrayList, com.TidyGames.post.model.vo.Post" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Post> list = (ArrayList<Post>)request.getAttribute("list");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#community{color:orange;}
	.include-area{
		width:1500px;
		margin:auto;
		align:center;
		border-bottom:2px solid rgba(255, 255, 255, 0.555);
	}
	.outer{
		background-color: #0e332c;
		color:white;
		width:1200px;
		height:1000px;
		margin:auto;
		margin-top:50px;
	}
	table {text-align:center;}
	#table{color:white;}
	tbody>tr:hover{
    	background:lightgray;
    	color:black;
    	cursor:pointer;
    	opacity:0.9;
    }
    #title:hover{
    	text-decoration:underline;
    }
    .paging-area button{
    	border:none;
    }
    #submitbtn{color:white; background:#0e332c; border:none;}
    #submitbtn:hover{cursor:pointer; color:orange;}
</style>
</head>
<body style="background-color: #0e332c;">

	<div class="include-area">
		<%@ include file="../common/topbar.jsp" %>
		<%@ include file="../common/navibar.jsp" %>
	</div>
    
    <div class="outer">

        <h2>TIDY COMMUNITY  <i class="far fa-comments"></i></h2>
        <br><br>
        
        <form role="form" method="post">  
        	<input type="hidden" name="currentPage" value="<%=currentPage%>">
		</form>
		
            <div id="deletebtn" align="right" style="width:1200px;">
                <% if(loginUser != null && loginUser.getMemId().equals("admin")) { %>
                	<a href="" class="btn btn-sm btn-danger">삭제</a>
                <% } %>
                <% if(loginUser != null) { %> <!-- 블락된 회원은 못 보게..어떻게 하지? -->
                	<a href="<%= contextPath %>/enroll.po?memId=<%= loginUser.getMemId() %>" class="btn btn-sm btn-info">글작성</a>
            	<% } %>
            </div>

            <br>

            <table align="center" style="font-size: 12pt" class="table table-sm" id="table">

                <thead style="background:rgb(80, 88, 83)">
                    <% if(loginUser != null && loginUser.getMemId().equals("admin")) { %>
                    	<th><input type="checkbox" id="check1"></th>
                    <% } %>
                    <th width="100">글번호</th>
                    <th width="200">작성자</th>
                    <th width="500">제목</th>
                    <th width="100">조회수</th>
                    <th width="100">추천수</th>
                    <th width="150">작성일</th>
                </thead>
                <tbody>
                	<% if(list.isEmpty()) { %>
	                    <tr>    
	                        <td colspan="7">조회된 게시글이 없습니다.</td>
	                    </tr>
	                <% }else { %>
	                    <tr>
	                        <% for(Post p : list) { %>
			                    <tr>
			                    	<% if(loginUser != null && loginUser.getMemId().equals("admin")) { %>
	                       				<td><input type="checkbox"></td>
	                       			 <% } %>
			                    	<td id="postNo"><%=p.getPostNo()%></td>
			                        <td><%=p.getPostWriter()%></td>
			                        <td id="title"><%=p.getPostName()%></td>
			                        <td><%=p.getPostView()%></td>
			                        <td><%=p.getPostLike()%></td>
			                        <td><%=p.getPostModify() %></td>
			                    </tr>
	                    	<% } %>
	                    </tr>
                    <% } %>
                </tbody>
            </table>

            <br><br>

            <div class="paging-area" align="center">
            
	        	<% if(currentPage != 1) { %>
	            	<button style="border-radius:3px;" onclick="location.href='<%=contextPath%>/list.po?cpage=<%=currentPage-1%>';"> &lt; </button>
	            <% } %>
	            
	            <% for(int p=startPage; p<=endPage; p++){ %>
	            	
	            	<% if(p == currentPage) { %>
	            		<button disabled style="border-radius:3px; background:orange; color:white;"><%= p %></button>
	            	<% }else { %>
	            		<button style="border-radius:3px;" onclick="location.href='<%=contextPath%>/list.po?cpage=<%= p %>';"><%= p %></button>
	            	<% } %>
	            	
	            <% } %>
	            
	            <% if(currentPage != maxPage) { %>
	            	<button onclick="location.href='<%=contextPath%>/list.po?cpage=<%=currentPage+1%>';"> &gt; </button>
	            <% } %>
        	</div>
            <br><br>

            <div class="search-area" align="center">
				<form action="search.po">
	                <select name="search" style="height:30px;">
	                	<option value="r">최신순</option>
	                    <option value="v">조회순</option>
	                    <option value="l">추천순</option>
	                    <option value="n"}>닉네임</option>
	                </select>
	                <input type="text" name="word" style="width:500px; height:30px;">
	                <button type="submit" id="submitbtn"><i class="fas fa-search"></i></button>		
				</form>


            </div>

        

    </div>
    
    <% if(loginUser != null && loginUser.getMemId().equals("admin")) { %>
		
		<script>
			$(function(){
				$("#table>tbody>tr").click(function(){
					location.href = '<%=contextPath%>/detail.po?cpage=<%=currentPage%>&num=' + $(this).children().eq(1).text();
				});
				
			
				$("#check1").click(function(){
		            if($(this).is(":checked")){
		                $(":checkbox", $("table")).prop("checked", true);
		            }else {
		                $(":checkbox", $("table")).prop("checked", false);
		            }
		        })	
				
			})
		</script>
	
	<% } else { %>
	
		<script>
			$(function(){
				$("#table>tbody>tr").click(function(){
					location.href = '<%=contextPath%>/detail.po?cpage=<%=currentPage%>&num=' + $(this).children().eq(0).text();
				});

			})
		</script>
	
	<% } %>
	
	

</body>
</html>