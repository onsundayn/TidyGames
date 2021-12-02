<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        width:140px;
        margin-left:30px;
        margin-top:20px;
    }
    #top1 a{
        font-size:17px;
        font-weight:bold;
    }
    #top2{margin:auto;}
    #search_box{
        width:500px;
        height:30px;
    }
    #icon_btn{
        background-color:#0e332c; 
        color:white;
        border:0;
        outline:0;
    }
    #search_form input{width:100%; height:100%;}
    #search_form div{margin-inline-end:5px;}

    #top3{
        width:60px;
        margin-right:30px;
        margin-top:20px;
    }
    #usericon{padding-left:15px;}

    .menu-area, .top-area{background:#0e332c}
    .menu{
        display:table-cell; 
        width:200px;
        height:140px;
    }
    .menu a{
        text-decoration: none;
        color:white;
        font-size:19px;
        display:block;
        width:100%;
        height:100%;
        line-height:140px;
    }
    .menu a:hover{
        text-decoration: none;
        color:orange;
        font-weight:bold;
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

    <div class="header">


        <div class="top-area">
            <div id="top1"><a href=""><img src="../../resources/image/tidyLogo.png"> TIDY GAMES</a></div>
            <div id="top2" align="center">
                <form action="" id="search_form">

                    <div id="search_box">
                        <input type="text" name="keyword" placeholder="검색어를 입력하세요" style="border-radius: 5px;">
                    </div>
        
                    <div id="search_btn">
                        <button type="submit" id="icon_btn"><i class="fas fa-search"></i></button>
                    </div>
                </form>
            </div>
            <div id="top3">
                <a href=""><i class="fas fa-shopping-bag fa-lg"></i></a>
                <a href="" id="usericon"><i class="fas fa-user fa-lg"></i></a>
            </div>
        </div>
    
        <div class="menu-area" align="center">
            <div class="menu"><a href="">NOTICE</a></div>
            <div class="menu"><a href="">LIBRARY</a></div>
            <div class="menu"><a href="">COMMUNITY</a></div>
            <div class="menu"><a href="">HELP</a></div>
        </div>


    </div>

    <script>
        const searchicon = <i class="fas fa-search fa-lg"></i>
    </script>


</body>
</html>