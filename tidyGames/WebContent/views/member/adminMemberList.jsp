<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.TidyGames.member.model.vo.Member, com.TidyGames.common.model.vo.PageInfo"%>
    
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");

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
        width:30%;
        /* margin:20px; */
        margin: 50px 20px 20px 20px;
        /* margin-left:80px; */
    }
    #midTop{
        width:25%;
        margin: 55px 20px 20px 20px;
    }
    #rightTop{
        margin: 55px 20px 20px 80px;
    }
    #leftTop span{
        font-size:30px;
        font-weight: bolder;
        color:black;
        margin: 0px 70px 0px 50px;
    }
    #table{
        margin:auto;
        width:1200px;
        /* background-color: gray; */
    }
    #table *{
        height:15px;
    }
    #table th{
        font-size:18px;
    }
    #btn{
        padding:0px;
        width:46px;
        height:24px;
        margin-left:3px;
    }
    #checkBox{
        width:20px;
        height:20px;
        margin-top:3px;
    }
    #memberList{
        color:orange;
    }
    tbody a{
        color:gray;
    }
    #table td{padding:4px;}
    #tableOut1{
        width:100%;
        height:94%;
    }
    #tableOut2{
        width:100%;
        height:6%;
    }
    #aColor{color:black;}

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
            <div id="intro">회원 관리</div>
            <div id="line_3"></div>
            
      		
      		
    	    <div id="tableBox">
                <div id="tableTop">
                    <div id="leftTop">
                        <div>
                            <span>회원수 <%= listCount %>명</span>
                        </div>
                    </div>
                    
      			<form action="<%= contextPath %>/memberSelect.me?num=">
                    <div id="midTop">
                        <div>
                            <button type="sumbit" class="btn btn-sm btn-dark">상세 조회</button>
                            <a href="" class="btn btn-sm btn-dark">회원 수정</a>
<!--                              <a href="" class="btn btn-sm btn-dark">회원 삭제</a> -->
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
                            <th width="30"><button type="button" onclick="allCheck();" id="btn" class="btn btn-sm btn-secondary" style="width:24px">V</button></th>
                            <th width="30">No.</th>
                            <th width="130">아이디</th>
                            <th width="100">이름</th>
                            <th width="150">닉네임</th>
                            <th width="150">이메일</th>
                            <th width="100">전화번호</th>
                            <th width="100">적립금</th>
                            <th width="100"> </tr>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <% for(Member m : list) {%>
                        <tr align="center">
                            <td><input type="checkbox" id="checkBox" name="checkBox" value="<%= m.getMemNo() %>" ></td>
                            <td><%= m.getMemNo() %></td>
                            <td><a href="<%= contextPath %>/memberSelect.me?mno=<%=m.getMemNo()%>" id="aColor"><%= m.getMemId() %></a></td>
                            <td><%= m.getMemName() %></td>
                            <td><%= m.getMemNick() %></td>
                            <td><%= m.getMemEmail() %></td>
                            <td><%= m.getMemPhone() %></td>
                            <td>
                            	<!-- contextPath로 point의 현재보유포인트를 불러올 자리 -->
                                <a href="" id="btn" class="btn btn-sm btn-outline-dark">변경</a>
                            </td>
                            <td>
                            	<a href="" id="btn" onclick="done();" class="btn btn-sm btn-outline-info">수정</a>
                            	<a href="" id="btn" onclick="done();" class="btn btn-sm btn-outline-dark">탈퇴</a>
	                        </td>
                        </tr>
                        <% } %>
                    </tbody>
                  </table>
                </div>
               </form>

                  <div id="tableOut2">
	                    <div class="paging-area" align="center">
	                        <!-- 첫 페이지에서는 이전으로 비활성화 -->
	 						<% if(currentPage != 1) { %>
	            				<button onclick="location.href='<%=contextPath%>/memberList.me?cpage=<%=currentPage-1%>';"> &lt; </button>
	           				 <% } %>
	                        
	                        <% for(int p=startPage; p<=endPage; p++) { %>
	                        <!-- 페이징 버튼 활성화 조건 게시물수에 따른 버튼 활성화  -->
	                            <% if(p == currentPage) { %>
	                                <button disabled><%= p %></button>
	                            <% }else { %>
	                                <button onclick="location.href='<%= contextPath %>/memberList.me?cpage=<%= p %>';"><%= p %></button>
	                            <% } %>
	                        <% } %>
	                        
	                        <% if(currentPage != maxPage) { %>
	                            <button onclick="loaction.href='<%= contextPath %>/memberList.me?cpage<%=currentPage+1%>';"> &gt; </button>
	                            <!-- 현재 페이지가 마지막 페이지일 땐 다음으로 버튼 비활성화 -->
	                        <% } %>
                    </div>
                </div>
                
            </div>
      
      


        <footer>
            <div style="height:100px">
    
            </div>
        </footer>
    
    </div>
    
    <script>
		
    	function allCheck(){
			if($(":checkbox").prop("checked")) {
	   			$(":checkbox").prop("checked", false);    			
			}else{
				$(":checkbox").prop("checked", true);    			
		}
   	}
    	
    	function done(){
			 if(confirm("회원을 탈퇴시키겠습니까?")) {
	            	$("#table>tbody>tr").click(function(){
	    	         location.href ='<%= contextPath %>/delete.me?mno=' 	    	      	
	    	     			  	+ $(this).children().eq(1).text();
	            	})
			 }
		}
    </script>



</body>
</html>