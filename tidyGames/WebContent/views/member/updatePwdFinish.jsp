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
    div, input, span{
        box-sizing: border-box;
    }
    .outer{
        width: 1500px;
        height: 800px;
        background-color: #0e332c;
        margin: auto;
        margin-top: 50px;
    }
    #logo>*:hover{
        text-decoration: none;
    }
    #content{
        width: 600px;
        height: 600px;
        background-color: rgba(255, 255, 255, 0.5);
        margin: auto;
        margin-top: 50px;
        border-radius: 100px;
        position: relative;
    }
    #search_id_form{
        width: 80%;
        height: 70%;
        position: absolute;
        margin: auto;
        top: 0px;
        bottom: 0px;
        left: 0px;
        right: 0px;        
    }
    .search_user>*{
        margin-bottom: 5px;
    }
    .search_user>div{
        width:20%;
        float: left;
        color: white;
        font-size: 15px;
        font-weight: bold;
    }
    .next_btn{
        width: 120px;
        height: 35px;
        border-radius: 10px;
        background-color: #0e332c;
        border: none;
        color: white;
        font-weight: bold;
        font-size: 14px;
    }
    .code_btn{
        width: 29%; 
        height: 25px;
        border-radius: 5px;
        background-color: #0e332c;
        border: none;
        color: white;
        font-weight: bold;
        font-size: 14px;
    }

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #0e332c;">
    <div class="outer">
        <header>
            <div id="logo" align="center">
                <a href="<%= contextPath %>">
                    <img src="../../resources/image/tidyLogo.png" style="width:80px; height: 50px;"> <br>
                    <span style="color: white; font-size: 25px; font-weight: bold;">TIDY GAMES</span>
                </a>
            </div>
        </header>

        <content>
            <div id="content" align="center">
                <form action="" method="">
                    <div id="search_id_form">
                        <span style="color: white; font-size: 20px; font-weight: bold; ">비밀번호 재설정</span>
                        <br><br><hr>

                        <div align="left">
                            <span style="color: white; font-size: 15px; font-weight: bold;">
                                ● 고객님의 비밀번호가 성공적으로 재설정되었습니다.<br>
                                &nbsp;&nbsp;&nbsp;변경된 비밀번호로 로그인 해주세요.
                            </span>

                        </div>
                        
                        <button class="next_btn" onclick="loginPage();" style="margin-top: 220px;">로그인하기</button>

                    </div>
                </form>
                <script>
                    function loginPage(){

                    }
                </script>
            </div>
        </content>
    </div>
</body>
</html>