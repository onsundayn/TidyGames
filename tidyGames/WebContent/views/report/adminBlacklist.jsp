<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.TidyGames.report.model.vo.Report"%>
<!DOCTYPE html>

<%
	ArrayList<Report> list = (ArrayList<Report>)request.getAttribute("list");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        margin: 25px 80px 0px 95px;
    }
    #line_3{
        width:165px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
        margin: 8px 0px 0px 95px;
    }
    #box{
    	width:1290px;	
    	/* border:1px solid rgba(255, 255, 255, 0.222); */
        /* height: */
        
    }
    #tableBox{
        width:1100px;
        height:700px;
        /* margin-left:145px; */
        margin: 30px 0px 100px 95px;
        background-color: rgb(197, 197, 197);
        border: 10px solid rgba(255, 255, 255, 0.555);
    }
    #tableTop div{
        float:left;
        /* width:400px; */
        /* border:1px solid white; */
    }
    #leftTop{   
        margin:20px;
        margin: 50px 20px 20px 20px;
        /* margin-left:80px; */
    }
    #leftTop span{
        font-size:25px;
        font-weight: bolder;
        color:black;
        margin: 0px 50px 0px 40px;
    }
    #rightTop{
        margin: 55px 20px 20px 380px;
    }
    #table{
        margin:auto;
        width:930px;
        /* background-color: gray; */
    }
    #table *{
        height:15px;
    }
    #table th{font-size:18px;}
    #table td{padding:5px;}
    #btn{
        padding:0px;
        margin:0px;
        width:93px;
        height:30px;
    }
    #checkBox{
        width:20px;
        height:20px;
        margin-top:3px;
    }
    #blacklist{
        color:orange;
    }
    #table a{
        color:black;
    }
    #tableOut1{
        width:100%;
        height:92%;
    }
    #tableOut2{
        width:100%;
        height:8%;
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
            <div id="intro">블랙리스트</div>
            <div id="line_3"></div>
            
      
    	    <div id="tableBox">
                <div id="tableTop">
                    <div id="leftTop">
                        <div>
                            <span>블랙리스트 목록</span>
                        </div>
                    </div>
                    <div id="rightTop">
                        <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-dark" disabled>회원 ID</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                                <span class="caret"></span>
                                </button>
                                <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">닉네임</a>
                                <a class="dropdown-item" href="#">이 름</a>
                                </div>
                        </div>

                        <div>
                            <input type="text" id="selectKeyword" name="keyword" placeholder="조회를 위한 입력">
                        </div>
                        <button class="btn btn-sm btn-dark" onclick="" >조회</button>
                    </div>
                </div>
                <div id="tableOut1">
                <table id="table" class="table table-hover">
                    <thead>
                        <tr align="center">
                            <th width="30">No.</th>
                            <th width="100">아이디</th>
                            <th width="150">닉네임</th>
                            <th width="170">제한 사유</th>
                            <th width="130">등록일</th>
                            <th width="100">권한</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <% for(Report r : list) { %>
                        	
	                        <tr align="center">
	                            <td width="30"><%= r.getReportNo() %></td>
	                            <td><%= r.getReportedName() %></td>
	                            <td><a href=""><%= r.getReportedId() %></a></td>
	                            <td><%= r.getReportSort() %></td>
	                            <td><%= r.getReportDate() %></td>
	                            <td style="padding:4px">
	                              <button id="btn" class="btn btn-outline-dark">차단 해제</button>
	                            </td>
	                        </tr>
                        
                        <% } %>
                        
                        
                        <!-- if() {} -->
                        <tr align="center">
                            <td width="30">1</td>
                            <td>userId</td>
                            <td><a href="">회원 상세조회</a></td>
                            <td>욕설, 비방</td>
                            <td>2021/12/11</td>
                            <td style="padding:4px">
                              <button id="btn" class="btn btn-outline-dark">차단 해제</button>
                            </td>
                        </tr>
                        
                        <!-- 복사 -->
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
<tr align="center">
	<td width="30">1</td>
	<td>userId</td>
	<td><a href="">회원 상세조회</a></td>
	<td>욕설, 비방</td>
	<td>2021/12/11</td>
	<td style="padding:4px">
	      <button id="btn" class="btn btn-outline-dark">차단 해제</button>
    </td>
</tr>	
                        <!-- 샘플 끝 -->
                    

                    </tbody>
                  </table>
                </div>

                <div id="tableOut2">
                  <div id="pagebar" align="center">
                        <button>&lt;</button>   
                        <button>1</button>
                        <button>2</button>
                        <button>3</button>
                        <button>4</button>
                        <button>5</button>
                        <button>&gt;</button>
                  </div>
                </div>
                </div>
                
            </div>
      
      


        <footer>
            <div style="height:100px">
    
            </div>
        </footer>
    
    </div>



</body>
</html>