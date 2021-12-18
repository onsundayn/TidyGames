<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .navi-area{
        background:#0e332c;
    }
    .menu{
        display:table-cell; 
        width:200px;
        height:100px;
    }
    .menu a{
        text-decoration: none;
        color:white;
        font-size:19px;
        font-weight:bold;
        display:block;
        width:100%;
        height:100%;
        line-height:100px;
    }
    .menu a:hover{
        text-decoration: none;
        color:orange;
    }
</style>
</head>
<body>

    <div class="navi-area" align="center">
        <div class="menu"><a href="" id="notice">NOTICE</a></div>
        <div class="menu"><a href="<%= request.getContextPath() %>/library.me" id="library">LIBRARY</a></div>
        <div class="menu"><a href="<%= request.getContextPath() %>/list.po?cpage=1" id="community">COMMUNITY</a></div>
        <div class="menu"><a href="" id="help">HELP</a></div>
    </div>

</body>
</html>