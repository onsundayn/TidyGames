<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    .header{height:20%;}

    .top-area{
        display:flex;
        justify-content: space-between;
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
        width:20%;
    }
    #top2{width:60%;}
    #top3{width:10%;}

    .menu-area, .top-area{background:#0e332c}
    .menu{
        display:table-cell; 
        width:200px;
        height:50px;
    }
    .menu a{
        text-decoration: none;
        color:white;
        font-size:16px;
        font-weight:bold;
        display:block;
        width:100%;
        height:100%;
        line-height:50px;
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

    <div class="header">


        <div class="top-area">
            <div id="top1">TIDY GAMES</div>
            <div id="top2" align="center">
                <form action="" id="search_form">

                    <div id="search_text">
                        <input type="text" name="keyword">
                    </div>
        
                    <div id="search_btn">
                        <input type="submit" value="검색">
                        <!-- 숙제힌트 : <button><img src="반영시키고자하는이미지경로"></button> -->
                    </div>
            </div>
            <div id="top3">
                <a href=""><i class="fas fa-shopping-bag"></i></a>
                <a href=""><i class="fas fa-user"></i></a>
            </div>
        </div>
    
        <div class="menu-area" align="center">
            <div class="menu"><a href="">NOTICE</a></div>
            <div class="menu"><a href="">LIBRARY</a></div>
            <div class="menu"><a href="">COMMUNITY</a></div>
            <div class="menu"><a href="">HELP</a></div>
        </div>


    </div>


</body>
</html>