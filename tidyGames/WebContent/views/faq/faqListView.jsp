<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#faq{color:orange;}
	.navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
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
    #submitbtn{color:white; background:#0e332c; border:none;}
    .btn-category{
        background-color: lightgray;
        color: #0e332c;;
        border: none;
        height: 30px;
        border-radius: 10px;
        font-weight: bold;
    }
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp" %>
	<div class="navi"><%@ include file="../common/navibar.jsp" %></div>
    
    <div class="outer">

        <h2 style="float: left;">TIDY HELP |</h2>
        <h4 style="font-style: oblique; line-height: 2; float: left;">&nbsp;&nbsp;FAQ</h4>
        <h4 style="line-height: 2; color: gray; cursor: pointer;" onclick="location.href=''">&nbsp;&nbsp;1:1문의</h4>
        <br><br>
        <div id="deletebtn" align="right" style="width:1200px;">
            <!--관리자계정에서만보이는 버튼-->
            <% if(loginUser != null && loginUser.getRoleId().equals("A")) { %>
                <a href="" class="btn btn-sm btn-danger">삭제</a>
                <a href="<%= contextPath %>/noticeEnroll.no" class="btn btn-sm btn-info">글작성</a>
            <% } %>
            <!--
            <button type="button" class="btn-category" style="width: 250px;" onclick="category('join');">가입 및 사이트 관련</button>
            <button type="button" class="btn-category" style="width: 100px;" onclick="category('pay');">결제 관련</button>
            <button type="button" class="btn-category" style="width: 100px;" onclick="category('etc');">기타</button>
            -->
        </div>

        <hr style="background-color: white; height: 3px;" >
        <div class="q">

        </div>
        <pre class="a">

        </pre>




        
        <hr style="background-color: white; height: 3px;" >
        <br><br>


    </div>


    <script>
    	$(function(){
	        $("#check1").click(function(){
	            if($(this).is(":checked")){
	                $(":checkbox", $("table")).prop("checked", true);
	            }else {
	                $(":checkbox", $("table")).prop("checked", false);
	            }
	        })
    	})
        function category(el){
            
        }
    </script>

</body>
</html>