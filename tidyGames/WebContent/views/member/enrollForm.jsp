<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
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
        height: 2000px;
        background-color: #0e332c;
        margin: auto;
        margin-top: 50px;
    }
    #logo>*:hover{
        text-decoration: none;
    }
    #content{
        width: 600px;
        height: 1800px;
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
    .sign_up_main{
        color: white;
        font-size: 15px;
        font-weight: bold;
    }
    .sign_up_etc{
        color: lightgray;
        font-size: 13px;
    }
    .btn_st{
        border-radius: 10px;
        background-color: #0e332c;
        border: none;
        color: white;
        font-weight: bold;
        font-size: 14px;
    }
    .numInput{
        display: inline-block; 
        width: 140px; 
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
                                >> 필수 입력 사항<br>
                            </div>
                        </div>
                        <br><br>

                        <div align="left" class="sign_up">
                            <div class="sign_up_main">● 아이디</div>
                            <input type="text" name="userId" id="user_id" style="width: 80%;" required>
                            <button class="btn_st" style="width: 19%; height: 30px;">중복확인</button>
                            <div class="sign_up_etc">4~10자의 영문 대소문자, 숫자, 특수문자(_) 사용 가능합니다.</div>

                            <div class="sign_up_main">● 비밀번호</div>
                            <input type="password" name="userPwd" id="user_pwd" style ="width: 100%;" required>
                            <div class="sign_up_etc">8~16자 영문 대소문자, 숫자, 특수문자(!,@,#,$,%,^,&,*) 사용 가능합니다.</div>
                            
                            <div class="sign_up_main">● 비밀번호확인</div>
                            <input type="password" id="pwd_check" style ="width: 100%;" required>

                            <div class="sign_up_main">● 닉네임</div>
                            <input type="text" name="userNick" id="user_nick" style="width: 80%" required>
                            <button class="btn_st" style="width: 19%; height: 30px;">중복확인</button>

                            <div class="sign_up_main">● 이름</div>
                            <input type="text" name="userName" id="user_name" style ="width: 100%;" required>

                            <div class="sign_up_main">● 생년월일</div>
                            <select name="year" id="year" required style="width: 150px; height: 30px;">
								<% Date d = new Date(); %>
								<% for(int i=0; i<100; i++) { %>
									<option>
										<%= d.getYear() + 1900 - i %>
									</option>
								<% } %>
								<option selected>년도</option>
                            </select>
                            <select name="month" id="month" required style="width: 150px; height: 30px;">
								<% for(int i=1; i<=12; i++) { %>
									<option>
										<%= i %>
									</option>
								<% } %>
								<option selected>월</option>
                            </select>
							<input type="number" name="day" id="day" class="numInput" required maxlength="2" min="1" max="31" placeholder="일">

                            <div class="sign_up_main">● 휴대폰번호</div>
                            <input type="text" name="phone1" id="phone1" class="numInput" required maxlength="3"> - 
                            <input type="text" name="phone2" id="phone2" class="numInput" required maxlength="4"> - 
                            <input type="text" name="phone3" id="phone3" class="numInput" required maxlength="4">
                            
                            <div class="sign_up_main">● 이메일 주소</div>
                            <input type="email" name="email" id="email" required style="width: 100%;"> 
                            
                            <div align="left">
                                <div style="color: white; font-size: 17px; font-weight: bold; margin-top:80px;">
                                    >> 선택 입력 사항<br>
                                </div>
                            </div>








                            
                        </div>
                        <br><br><br>

                        <button type="submit" class="btn_st" style="width: 70px; height: 35px;">다음</button>
                        <!-- 휴대폰번호에 숫자가 아닌 값이 들어가면 오류 ajax 뜨게해야함 -->
                        <!-- 월에 대해서 일이 맞지 않으면 오류 ajax뜨게해야함-->

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