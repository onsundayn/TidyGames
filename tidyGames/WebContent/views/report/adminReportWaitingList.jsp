<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.TidyGames.report.model.vo.Report, com.TidyGames.common.model.vo.PageInfo"%>
    
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Report> list = (ArrayList<Report>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int listCount = pi.getListCount();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tidy Games</title>
<style>
    div{
		box-sizing: border-box;
		color:white;
		/* border: 1px solid rgba(255, 255, 255, 0.555); */
	}
	#outer{
        width:1500px;
        /* height:1500px; */
        margin:auto;
    }
    #outer>div{float:left;}
    #line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    #intro{
        font-size: 33px;
        font-weight: 900;
        color :white;
        margin: 25px 80px 0px 45px;
    }
    #line_3{
        width:145px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
        margin: 8px 0px 0px 45px;
    }
    #box{
    	width:1290px;	
    	/* border:1px solid rgba(255, 255, 255, 0.222); */
        /* height: */
        
    }
    #tableBox{
        width:1250px;
        height:790px;
        /* margin-left:145px; */
        margin: 30px 0px 100px 35px;
        background-color: rgb(197, 197, 197);
        border: 10px solid rgba(255, 255, 255, 0.555);
    }
    #tableTop div{
        float:left;
        /* width:400px; */
        /* border:1px solid white; */
    }
    #leftTop{   
        width:70%;
        margin:20px;
        margin:50px 20px 20px 20px;
       /* margin-left:80px; */
    }
    #rightTop{
        margin: 60px 0px 10px 200px;
    }
    #leftTop span{
        font-size:30px;
        font-weight: bolder;
        color:black;
        margin: 0px 50px 0px 40px;
    }
    #table{
        margin:auto;
        width:1150px;
        /* background-color: gray; */
    }
	#table th{font-size:18px;}
    #table td{padding:5px;}
    #btn{
    padding: 0px;
    margin: 0px;
    width: 78px;
    height: 30px;
    font-size: 14px;
    }
    #checkBox{
        width:20px;
        height:20px;
        margin-top:3px;
    }
    #reportSelect{
        color:orange;
    }
    #table a{
        color:black;
    }
    #table td{padding:4px;}
    #tableOut1{
        width:100%;
        height:93%;
    }
    #tableOut2{
        width:100%;
        height:7%;
    }
    #access{
        border-radius:5px;
        background:rgba(255, 255, 255, 0.555);
    }

</style>
</head>
<body style="background:#0e332c;">

    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    
    
    <div id="outer">
        <div id="line_1"></div>
        <div>
            <%@ include file="../common/adminSidebar.jsp" %>
        </div>
        
        <div id="box">
            <div id="intro">신고 내역</div>
            <div id="line_3"></div>
      
    	    <div id="tableBox">
                <div id="tableTop">
                    <div id="leftTop">
                        <div>
                            <span>신고 처리 대기 목록</span>
                        </div>
                    </div>
                    <div>
                </div>
                </div>
                <div id="tableOut1">
                <table id="table" class="table table-hover">
                    <thead>
                        <tr align="center">
                            <th width="30">No.</th>
                            <th width="100">신고된 유저</th>
                            <th width="200">신고한 글</th>
                            <th width="130">신고 사유</th>
                            <th width="100">신고자</th>
                            <th width="130">신고 시간</th>
                            <th width="80">타입</th>
                            <th width="100">접근 권한</th>
                            <th width="30"></th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <% for(Report r : list) { %>
                        <tr align="center">
                            <td><%= r.getReportNo() %></td>
                            <td><%= r.getReported() %></td>
                            <td><a href="<%= contextPath %>/detail.po?cpage=1&num=<%= r.getPostNo() %>"><%= r.getPost() %></a></td>
                            <td>
                            	<% if(r.getEtc() != null) { %>
                            		<%= r.getEtc() %>
                            	<% }else { %>
                            		<%= r.getReportSort() %>
                            	<% } %>
                            </td>
                            <td><%= r.getReporting() %></td>
                            <td><%= r.getReportDate() %></td>
                            <td>
                            	<% if(r.getReply() == null) { %>
                            			게시글
                            	<% }else { %>
                            			댓글
                            	<% } %>
                            </td>
                            <td style="padding:4px">
	                              <button onclick="block();" id="btn" class="btn btn-outline-dark">BLOCK</button>
	                        </td>
	                        <td>
	                        	<button onclick="done();" class="btn btn-sm btn-basic" style="color:black">X</button>
	                        </td>
                        </tr>
                        <% } %>
                        
                    </tbody>
                    </table>
                </div>

                 <div id="tableOut2">
                    
	                <% if(!list.isEmpty()) { %>
	                    <div class="paging-area" align="center">
	                        <!-- 첫 페이지에서는 이전으로 비활성화 -->
	 						<% if(currentPage != 1) { %>
	            				<button onclick="location.href='<%=contextPath%>/blacklist.re?cpage=<%=currentPage-1%>';"> &lt; </button>
	           				 <% } %>
	                        
	                        <% for(int p=startPage; p<=endPage; p++) { %>
	                        <!-- 페이징 버튼 활성화 조건 게시물수에 따른 버튼 활성화  -->
	                            <% if(p == currentPage) { %>
	                                <button disabled><%= p %></button>
	                            <% }else { %>
	                                <button onclick="location.href='<%= contextPath %>/blacklist.re?cpage=<%= p %>';"><%= p %></button>
	                            <% } %>
	                        <% } %>
	                        
	                        <% if(currentPage != maxPage) { %>
	                            <button onclick="loaction.href='<%= contextPath %>/blacklist.re?cpage<%=currentPage+1%>';"> &gt; </button>
	                            <!-- 현재 페이지가 마지막 페이지일 땐 다음으로 버튼 비활성화 -->
	                        <% } %>
	                    <% } %>
                    </div>

                </div>
                </div>
                
            </div>
      
      


        <footer>
            <div style="height:100px">
    
            </div>
        </footer>
    
    </div>
	
	<script>
		
	
		function block(){
			 if(confirm("해당 회원을 차단할까요?")) {
	            	$("#table>tbody>tr").click(function(){
	    	          location.href='<%= contextPath %>/block.re?user=' 
	    	        		  	   + $(this).children().eq(1).text() 
	    	      				   + '&rno=' + $(this).children().eq(0).text();
			 })
		 }
	}
		
		function done(){
			 if(confirm("신고내역을 삭제할까요?")) {
	            	$("#table>tbody>tr").click(function(){
	    	          location.href='<%= contextPath %>/done.re?rno=' 
	    	      				  	+ $(this).children().eq(0).text();
			 	})
			 }
		}
		
	</script>

</body>
</html>