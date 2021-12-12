<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{
        box-sizing: border-box;
    }
    #outer{
        width:1500px;
        height: 2100px;
        margin:auto;
    }
    #outer>div{
        float:left;
    }
    #intro{
        font-size: 30px;
        font-weight: 900;
        color :white;
        margin: 30px 80px 0px 50px;
    }
    #line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    #line_3{
        width:200px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
    }
    #profileBox{
        border:1px solid black;
        background: rgba(0, 0, 0, 0.300);
        width:1000px;
        height: 1850px;
        margin-top: 50px; 
        margin-left: 50px;
        position: relative;
    }
    #update_user{
        width: 80%;
        height: 90%;
        position: absolute;
        margin: auto;
        top: 0px;
        bottom: 0px;
        left: 0px;
        right: 0px;  
    }
    #updateUser{
        color: orange;
        font-weight: bold;
    }
    .sign_up>*{
        margin-top: 20px;
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
    #category>input{
        margin-bottom:5px;
        display: none;
    }
    #category>label{
        background-color:white;
        color: #0e332c; 
        border: none; 
        font-weight: bold;
    }
    .btn_center{
        /*
        position: absolute;
        margin: auto;
        top: 1550px;
        bottom: 0px;
        left: 0px;
        right: 0px;
        */
        width: 70px; 
        height: 35px; 
        margin-top: 150px;
        margin-left: 350px;
        background-color: gray;
        float: left;
    }
</style>
</head>
<body>
    
    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
   
    
    <div id="outer">
        <div id="line_1"></div>
        <div>
            <%@ include file="../common/memberSidebar.jsp" %>
        </div>
        
        <div>
            <div id="intro">내 정보 수정</div>
            <div id="line_3" style="margin:10px 50px;"></div>

            <div id="profileBox">
                <form action="" method="">
                    <div id="update_user">

                        <div align="left">
                            <div style="color: white; font-size: 17px; font-weight: bold;">
                                >> 필수 입력 사항<br>
                            </div>
                        </div>
                        <br>

                        <div align="left" class="sign_up">
                            <div class="sign_up_main">● 아이디</div>
                            <input type="text" name="userId" id="user_id" style="width: 40%; background-color: gray;" value="userId" readonly>

                            <div class="sign_up_main">● 비밀번호</div>
                            <input type="password" name="userPwd" id="user_pwd" style ="width: 70%;" required>
                            <div class="sign_up_etc" style="margin-top: 5px;">8~16자 영문 대소문자, 숫자, 특수문자(!,@,#,$,%,^,&,*) 사용 가능합니다.</div>
                            
                            <div class="sign_up_main">● 비밀번호확인</div>
                            <input type="password" id="pwd_check" style ="width: 70%;" required>

                            <div class="sign_up_main">● 닉네임</div>
                            <input type="text" name="userNick" id="user_nick" style="width: 40%" required>
                            <button class="btn_st" style="width: 19%; height: 30px;">중복확인</button>

                            <div class="sign_up_main">● 이름</div>
                            <input type="text" name="userName" id="user_name" style ="width: 40%;" required>

                            <div class="sign_up_main">● 생년월일</div>
                            <select name="year" id="year" required style="width: 150px; height: 30px;">
								<% Date d = new Date(); %>
								<% for(int i=0; i<100; i++) { %>
									<option>
										<%= d.getYear() + 1900 - i %>
									</option>
								<% } %>
								<option selected style="display: none;">년도</option>
                            </select>
                            <select name="month" id="month" required style="width: 150px; height: 30px;" onchange="createDay(this);">
								<% for(int i=1; i<=12; i++) { %>
									<option>
										<%= i %>
									</option>
								<% } %>
                                <option selected style="display: none;">월</option>
                            </select>
                            <select name="day" id="day" required style="width: 150px; height: 30px;">
                                <option selected style="display: none;">일</option>
                            </select>

                            <div class="sign_up_main">● 휴대폰번호</div>
                            <input type="text" name="phone1" id="phone1" class="numInput" required maxlength="3"> - 
                            <input type="text" name="phone2" id="phone2" class="numInput" required maxlength="4"> - 
                            <input type="text" name="phone3" id="phone3" class="numInput" required maxlength="4">
                            
                            <div class="sign_up_main">● 이메일 주소</div>
                            <input type="email" name="email" id="email" required style="width: 70%;"> 
                        </div>

                        <div align="left">
                            <div style="color: white; font-size: 17px; font-weight: bold; margin-top:100px;">
                                >> 선택 입력 사항<br>
                            </div>
                        </div>
                        <br>

                        <div align="left" class="sign_up">
                            <div class="sign_up_main">● 프로필사진</div>
                            <img src="" width="100" height="100"><br>
                            <input type="file" name="userPic" style="color: white; margin-bottom: 10px;">

                            <div class="sign_up_main">● 성별</div>
                            <input type="radio" name="gender" id="M" value="M">
                            <label for="M" style="color: white; margin-right: 10px;">남자</label>
                            <input type="radio" name="gender" id="F" value="F">
                            <label for="F" style="color: white;">여자</label>
                            
                            <div class="sign_up_main">● 주소</div>
                            <input type="text" name="address" id="address" style="width: 70%;">
                            
                            <div class="sign_up_main">● 선호하는 게임 장르를 선택해주세요! (다수 선택 가능)</div>
                            <div id="category">
                                <input type="checkbox" id="action" name="action" onclick="btnStyle('action');">
                                <label id="action_btn" class="btn" for="action">액션</label>
                                <input type="checkbox" id="roll" name="roll" onclick="btnStyle('roll');">
                                <label id="roll_btn" class="btn" for="roll">롤플레잉</label>
                                <input type="checkbox" id="racing" name="racing" onclick="btnStyle('racing');">
                                <label id="racing_btn" class="btn" for="racing">레이싱</label>
                                <input type="checkbox" id="simul" name="simul" onclick="btnStyle('simul');">
                                <label id="simul_btn" class="btn" for="simul">시뮬레이션</label>
                                <input type="checkbox" id="strategy" name="strategy" onclick="btnStyle('strategy');">
                                <label id="strategy_btn" class="btn" for="strategy">전략</label>
                                <input type="checkbox" id="sport" name="sport" onclick="btnStyle('sport');">
                                <label id="sport_btn" class="btn" for="sport">스포츠</label>
                                <br>
                                <input type="checkbox" id="indie" name="indie" onclick="btnStyle('indie');">
                                <label id="indie_btn" class="btn" for="indie">인디</label>
                                <input type="checkbox" id="casual" name="casual" onclick="btnStyle('casual');">
                                <label id="casual_btn" class="btn" for="casual">캐주얼</label>
                                <input type="checkbox" id="horror" name="horror" onclick="btnStyle('horror');">
                                <label id="horror_btn" class="btn" for="horror">공포</label>
                                <input type="checkbox" id="multi" name="multi" onclick="btnStyle('multi');">
                                <label id="multi_btn" class="btn" for="multi">멀티플레이</label>
                                <input type="checkbox" id="card" name="card" onclick="btnStyle('card');">
                                <label id="card_btn" class="btn" for="card">카드</label>
                            </div>
                        </div>

                        <button type="submit" class="btn_st btn_center" align="center">수정</button>
                        <div align="right" onclick="/*탈퇴할거냐는 alert 출력 후*/location.href='deleteUserFinish.jsp'" style="color: gray; cursor: pointer; margin-top: 150px;">회원 탈퇴</div>
                    </div>
                </form>
                <script>
                    function code_btn(){

                    }

                    function createDay(el){
                        var day = document.getElementById("day");
                        var month = el.value;

                        if( month == 1 || month == 3 || month == 5 || 
                            month == 7 || month == 8 || month == 10 || 
                            month == 12 ) {
                            for(var i=1; i<=31; i++) {
                                day.innerHTML += "<option>" + i + "</option>"
                            }
                        } else if(month == 2) {
                            for(var i=1; i<=29; i++) {
                                day.innerHTML += "<option>" + i + "</option>"
                            }
                        } else{
                            for(var i=1; i<=30; i++) {
                                day.innerHTML += "<option>" + i + "</option>"
                            }
                        }
                    }

                    function btnStyle(elId){
                        if(document.getElementById(elId).checked == true) {
                            document.getElementById(elId+"_btn").style.background = "#0e332c";
                            document.getElementById(elId+"_btn").style.color = "white";
                        } else if(document.getElementById(elId).checked == false) {
                            document.getElementById(elId+"_btn").style.background = "white";
                            document.getElementById(elId+"_btn").style.color = "#0e332c";
                        }
                    }
                </script>
            </div>

        </div>

    </div>
</body>
</html>