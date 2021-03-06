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
            <div id="intro">?????? ??????</div>
            <div id="line_3"></div>
      
    	    <div id="tableBox">
                <div id="tableTop">
                    <div id="leftTop">
                        <div>
                            <span>?????? ?????? ?????? ??????</span>
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
                            <th width="100">????????? ??????</th>
                            <th width="200">????????? ???</th>
                            <th width="130">?????? ??????</th>
                            <th width="100">?????????</th>
                            <th width="130">?????? ??????</th>
                            <th width="80">??????</th>
                            <th width="100">?????? ??????</th>
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
                            			?????????
                            	<% }else { %>
                            			??????
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
	                        <!-- ??? ?????????????????? ???????????? ???????????? -->
	 						<% if(currentPage != 1) { %>
	            				<button onclick="location.href='<%=contextPath%>/reportList.re?cpage=<%=currentPage-1%>';"> &lt; </button>
	           				 <% } %>
	                        
	                        <% for(int p=startPage; p<=endPage; p++) { %>
	                        <!-- ????????? ?????? ????????? ?????? ??????????????? ?????? ?????? ?????????  -->
	                            <% if(p == currentPage) { %>
	                                <button disabled><%= p %></button>
	                            <% }else { %>
	                                <button onclick="location.href='<%= contextPath %>/reportList.re?cpage=<%= p %>';"><%= p %></button>
	                            <% } %>
	                        <% } %>
	                        
	                        <% if(currentPage != maxPage) { %>
	                            <button onclick="loaction.href='<%= contextPath %>/reportList.re?cpage=<%=currentPage+1%>';"> &gt; </button>
	                            <!-- ?????? ???????????? ????????? ???????????? ??? ???????????? ?????? ???????????? -->
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
			 if(confirm("?????? ????????? ????????????????")) {
	            	$("#table>tbody>tr").click(function(){
	    	          location.href='<%= contextPath %>/block.re?user=' 
	    	        		  	   + $(this).children().eq(1).text() 
	    	      				   + '&rno=' + $(this).children().eq(0).text();
			 })
		 }
	}
		
		function done(){
			 if(confirm("??????????????? ????????????????")) {
	            	$("#table>tbody>tr").click(function(){
	    	          location.href='<%= contextPath %>/done.re?rno=' 
	    	      				  	+ $(this).children().eq(0).text();
			 	})
			 }
		}
		
	</script>

</body>
</html>