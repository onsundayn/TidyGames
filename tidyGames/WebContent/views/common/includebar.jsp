<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .top-area{
        height:100px;
        display:flex;
        justify-content:space-between;
        margin:auto;
        width:1500px;
    }
    .top-area div{
        display:table-cell;
        color:white;
        float: left;
    }
    .top-area a{
        text-decoration:none;
        color:white;
    }
    .top-area a:hover{
        text-decoration: none;
        color:orange;
    }
    #top1{
        width:200px;
        margin-left:10px;
        margin-top:10px;
    }
    #top1 a{
        font-size:17px;
        font-weight:bold;
    }
    #top2{
    	margin-top:20px;
    	margin-right:100px;
    }
    #search_box{
        width:600px;
        height:30px;
    }
    #icon_btn{
        background-color:#0e332c; 
        color:white;
        border:0;
        outline:0;
    }
    #icon_btn:hover{
        color:orange;
    }
    #search_form input{width:100%; height:100%;}

    #top3{
        width:60px;
        margin-right:10px;
        margin-top:20px;
    }
    #usericon{padding-left:5px;}
    .top-area{background:#0e332c}
    
    .navi-area{
        background:#0e332c;
        marin-top:100px;
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
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>

    <div class="top-area">
        <div id="top1"><a href="<%=contextPath%>"><img src="<%=contextPath%>/resources/image/tidyLogo.png" width="60px" height="40"> TIDY GAMES</a></div>
        <div id="top2" align="center">
            <form action="" id="search_form">

                <div id="search_box">
                    <input type="text" name="keyword" style="border-radius: 3px;">
                </div>
    
                <div id="search_btn">
                    <button type="submit" id="icon_btn"><i class="fas fa-search"></i></button>
                </div>
            </form>
        </div>
        <div id="top3">
            <a href=""><i class="fas fa-shopping-cart fa-lg"></i></a>
            <a href="" id="usericon"><i class="far fa-user fa-lg"></i></a>
        </div>
        
    </div>
        <div class="navi-area" align="center">
        <div class="menu"><a href="" id="notice">NOTICE</a></div>
        <div class="menu"><a href="" id="library">LIBRARY</a></div>
        <div class="menu"><a href="" id="community">COMMUNITY</a></div>
        <div class="menu"><a href="" id="help">HELP</a></div>
    </div>

</body>
</html>