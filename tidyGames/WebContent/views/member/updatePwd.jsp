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
        margin-top: 120px;
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
    .updatePwd>input{
        width: 60%;
        margin-bottom: 5px;
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
                <form action="updatePwdFinish.jsp" method="">
                    <div id="search_id_form">
                        <span style="color: white; font-size: 20px; font-weight: bold; ">비밀번호 재설정</span>
                        <br><br><hr>

                        <div align="left">
                            <span style="color: white; font-size: 15px; font-weight: bold;">
                                ● 아이디 : 
                            </span>
                            <br><br>

                            <div class="updatePwd">
                                <input type="password" name="updatePwd" placeholder="새 비밀번호 입력" style="float: left; margin-right: 10px;">
                                <div id="new_pwd" style="font-size: 13px; line-height: 30px; display:block">조건에 맞게 입력해주세요.</div>

                                <input type="password" placeholder="새 비밀번호 확인" style="float: left; margin-right: 10px;"><br>
                                <div id="new_pwd_check" style="font-size: 13px; line-height: 0px; display:block">비밀번호가 일치하지 않습니다.</div>
                                <br><br>
                                <span style="color: lightgray; font-size: 14px;">
                                    8~16자의 영문 대소문자, 숫자, 특수문자(!,@,#,$,%,^,&,*) 사용 가능합니다.
                                </span>
                            </div>

                        </div>
                        
                        <button type="submit" class="next_btn">확인</button>

                    </div>
                </form>
                <script>

                </script>
            </div>
        </content>
    </div>
</body>
</html>