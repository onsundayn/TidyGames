<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .outer{
            width: 1200px;
            height: 800px;
        }
    
        #content>a{
            color: white;
            text-decoration: none;
            font-size: 20px;
            font-weight: 500;
            margin: 10px;
        }

        .mainImg{
            background: #36625a;
            width:1200px;
            height:40%;
            margin-top: 30px;
        }
        .mainImg>span{
            display: inline-block;
            width:200px;
            height:80%;
            box-sizing: border-box;
            border: 1px solid black;
            margin: 10px;
        }
        
        .mainImg button{
            display: inline-block;
            margin-top: 150px;
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
    

</head>

<body style="background-color: #0e332c;">
	
	    <div class="outer" align="center">

      <div id="content" align="center">
         <a href="">NOTICE</a>
         <a href="">COMMUNITY</a>
         <a href="">HELP</a>
      </div>

        <div class="mainImg">
            <button type="button" class="btn btn-primary btn-sm btn-light" style="float: left;"><<</button>
            <span class="mainImg1">
               <img src="/WebContent/resources/image/unnamed.jpg" alt="">
            </span>
            <span class="mainImg2"></span>
            <span class="mainImg3"></span>
            <span class="mainImg4"></span>
            <button type="button" class="btn btn-primary btn-sm btn-light"style="float: right;">>></button>

        </div>


   </div>

    
	
	

</body>
</html>