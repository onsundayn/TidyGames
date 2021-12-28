<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.TidyGames.common.model.vo.PageInfo, java.util.ArrayList, com.TidyGames.game.model.vo.Game" %>	
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Game> list = (ArrayList<Game>)request.getAttribute("list");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int count = 0; 
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>GameUploadList</title>
<style>
#deletelistga {
	color: orange;
}

#parent {
	display: grid;
	grid-template-columns: repeat(5, 1fr);
	grid-template-rows: repeat(5, 1fr);
	color: white;
	width: 1500px;
	height: 900px;
	margin: auto;
}
#line1{
		margin:0 auto;
        width:1500px;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    } 


#div1 {
	grid-area: 1/2/5/5;
	margin-top: 20px;
}

#selectOption {
	margin-bottom: 20px;
}

#list-area {
	text-align: center;
}

#list-area th {
	background: lightgray;
	color: black;
	border: 2px solid white;
}

#list-area td {
	border: 2px solid white;
	color: white;
}

#bdg {
	font-size: 0.9em;
}

#pageNav {
	margin: 30px;
}

.paging-area button{
    	border:none;
    }
    
/*  #list-area>tbody>tr:hover{
    	background:gray;
    	cursor:pointer;
    }   */  
</style>



</head>
<body style="background: #0e332c;">

	<%@ include file="../common/topbar.jsp"%>
	<%@ include file="../common/navibar.jsp"%>
	
	<div id="line1"></div>
	<div id="parent">

		<%@ include file="../common/adminSidebar.jsp"%>

		<div id="div1">
			<h1>삭제된 게임 목록</h1>




			<div id="selectOption" align="right" style="margin-top: 30px">
				<form>
					<table>
						<tbody>
							<tr>
								<td><select class="form-control" name="searchField">
										<option>아이디</option>
										<option>게임</option>
										<option>등록일</option>
								</select></td>
								
								<td><input type="text" class="form-control"
									placeholder="검색어 입력" name="searchText" maxlength="50">
								</td>
								<td>
									<button type="submit" class="btn btn-secondary">조회</button>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>

			<div>
				<table class="table table-hover" id=list-area>
					<thead>
						<tr>
							<th width="70px">번호</th>
							<th width="170px">아이디</th>
							<th width="300px">게임</th>
							<th width="110px">등록일</th>
							<th width="100px">삭제취소</th>
						</tr>
					</thead>
					<tbody>
					
					<% for (Game g : list) {	%>
						<% if(g.getGameStatus().equals("N")) { %>
						<% count ++; %>
						<%} %>
						<% } %>
						
						
					
					
					
						<% if(count==0) { %>
		                    <tr>    
		                        <td colspan="5">조회된 게임이 없습니다.</td>
		                    </tr>
	                    <% }else{ %>	          
							<% for (Game g : list) {	%>
							<% if(g.getGameStatus().equals("N")) { %>
						<tr>
							<td><%=g.getGameNo() %></td>
							<td><%=g.getKorName() %></td>
							<td><%=g.getEngName() %></td>
							<td><%=g.getUploadDate() %></td>							
							<td><button onclick="delcan(this.value);" class="btn btn-danger btn-sm" value="<%=g.getGameNo() %>">삭제취소</button></td>
						</tr>
							<%}%>
						<%} %>
						<% } %>
						
					</tbody>
				</table>
			</div>


			<div class="paging-area" align="center">

        	<% if(currentPage != 1) { %>
            	<button style="border-radius:3px;" onclick="location.href='<%=contextPath%>/uplist.ga?cpage=<%=currentPage-1%>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++){ %>
            	
            	<% if(p == currentPage) { %>
            		<button disabled style="border-radius:3px; background:orange; color:white;"><%= p %></button>
            	<% }else { %>
            		<button style="border-radius:3px;" onclick="location.href='<%=contextPath%>/uplist.ga?cpage=<%= p %>';"><%= p %></button>
            	<% } %>
            	
            <% } %>
            
            <% if(currentPage != maxPage) { %>
            	<button onclick="location.href='<%=contextPath%>/uplist.ga?cpage=<%=currentPage+1%>';"> &gt; </button>
            <% } %>
            	
        </div>
		</div>

	</div>

<script>
        	<%-- $(function(){
        		$("#list-area>tbody>tr").click(function(){
        			location.href = '<%=contextPath%>/uploaddetail.ga?gno=' + $(this).children().eq(0).text();
        		})
        	}) --%>
        	
        	
        	function delcan(gameNo){
        		
        		$.ajax({
        			url:"deletecancel.ga",
        			data:{
        				gno:gameNo
        			},
        			type:"post",
        			success:function(){
        				console.log("삭제취소용 ajax 통신 성공");
        				console.log(gameNo);
        				

        				 Swal.fire({
        	                    title: '정말로 취소하시겠습니까?',
        	                    
        	                    icon: 'warning',
        	                    showCancelButton: true,
        	                    confirmButtonColor: '#3085d6',
        	                    cancelButtonColor: '#d33',
        	                    confirmButtonText: '승인',
        	                    cancelButtonText: '취소'
        	                }).then((result) => {
        	                    if (result.isConfirmed) {
        	                    	swal.fire({
                				        icon: "success",
                				        title: "취소가 완료되었습니다!"
                				}).then((확인) => {
                				    
                					document.location.reload();
                				    
                				});
        	                    }
        	                });
        				
        			},
        			error:function(){
        				console.log("삭제취소용 ajax 통신 실패");
        			}
        		})
        		
        		
        	
        	}

        <%-- 	function delcan(){
        		
        		$.ajax({
        			url:"deletecancel.ga",
        			data:{
        				gno:$e.target.value
        			},
        			type:"post",
        			success:function(){
        				console.log("삭제취소용 ajax 통신 성공");
        				

        				 Swal.fire({
        	                    title: '정말로 취소하시겠습니까?',
        	                    
        	                    icon: 'warning',
        	                    showCancelButton: true,
        	                    confirmButtonColor: '#3085d6',
        	                    cancelButtonColor: '#d33',
        	                    confirmButtonText: '승인',
        	                    cancelButtonText: '취소'
        	                }).then((result) => {
        	                    if (result.isConfirmed) {
        	                    	swal.fire({
                				        icon: "success",
                				        title: "취소가 완료되었습니다!"
                				}).then((확인) => {
                				    
                					document.location.href = "<%=request.getContextPath()%>/uplist.ga?cpage=1";
                				    
                				});
        	                    }
        	                });
        				
        			},
        			error:function(){
        				console.log("삭제취소용 ajax 통신 실패");
        			}
        		})
        		
        	} --%>
        </script>


</body>
</html>