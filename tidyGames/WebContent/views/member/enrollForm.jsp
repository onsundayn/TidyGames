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
    #enroll_form{
        width: 80%;
        height: 80%;
        position: absolute;
        margin: auto;
        top: 0px;
        bottom: 0px;
        left: 0px;
        right: 0px;        
    }
    .sign_up>*{
        margin-top: 10px;
    }
    .sign_up>div{
        color: white;
        font-size: 15px;
        font-weight: bold;
    }
    .btn_st{
        border-radius: 10px;
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
                    <div id="enroll_form">
                        <div style="color: white; font-size: 20px; font-weight: bold;">SIGN UP</div>

                        <div align="left">
                            <div style="color: white; font-size: 17px; font-weight: bold; margin-top: 20px;">
                                ▶ 필수 입력 사항<br>
                            </div>
                        </div>
                        <br><br>

                        <div align="left" class="sign_up">
                            <div>● 아이디</div>
                            <input type="text" name="searchName" style="width: 80%;" required>
                            <button class="btn_st" style="width: 19%; height: 30px;">중복확인</button>
                            <div>4~10자의 영문 대소문자, 숫자, 특수문자(_) 사용 가능합니다.</div>

                            <div>● 이메일 주소</div>
                            <input type="email" name="searchEmail" style ="width: 100%;" required>
                            <div>● 인증번호</div>
                            <input type="number" name="verificationCode" placeholder="6자리 숫자 입력" maxlength="6" style="width: 50%" required disabled >
                            <button class="btn_st" onclick="code_btn();" style="width: 30%; height: 30px;">인증번호 받기</button>
                        </div>
                        <br><br><br>

                        <button type="submit" class="btn_st" style="width: 70px; height: 35px;">다음</button>

                    </div>
                </form>
                <script>
                    function code_btn(){
                        
                    }
                </script>
            </div>
        </content>
    </div>
</body>
</html>