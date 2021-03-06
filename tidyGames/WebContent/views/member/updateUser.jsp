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
        height: 1900px;
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
        margin-top: 10px;
    }
    .sign_up_main{
        color: white;
        font-size: 15px;
        font-weight: bold;
        margin-top: 25px;
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
        width: 60%; 
    }
    #categoryForm>input{
        margin-bottom:5px;
        display: none;
    }
    #categoryForm>label{
        background-color:white;
        color: #0e332c; 
        border: none; 
        font-weight: bold;
    }
    #agreeForm>label{
        color:white;
        margin-left: 5px;
    }
    #agreeForm>input{
        width: 15px;
        height: 15px;
    }
    .btn_center{
        width: 70px; 
        height: 35px; 
        margin-top: 150px;
        margin-left: 350px;
        background-color: gray;
        float: left;
    }
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #0e332c;">
    
    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
   
    
    <div id="outer">
        <div id="line_1"></div>
        <div>
            <%@ include file="../common/memberSidebar.jsp" %>
        </div>
        
        <div>
            <div id="intro">??? ?????? ??????</div>
            <div id="line_3" style="margin:10px 50px;"></div>

            <div id="profileBox">
                <form action="<%= contextPath %>/updateUser.me" method="post" onsubmit="return enrollCheck();">
                    <div id="update_user">

                        <div align="left">
                            <div style="color: white; font-size: 17px; font-weight: bold;">
                                >> ?????? ?????? ??????<br>
                            </div>
                        </div>
                        <br>

                        <div align="left" class="sign_up">
                            <div class="sign_up_main">??? ?????????</div>
                            <input type="text" name="userId" id="userId" style="width: 40%; background-color: gray;" value="<%= loginUser.getMemId() %>" readonly>
                            
                            <div class="sign_up_main">??? ????????????</div>
                            <input type="password" name="userPwd" id="userPwd" style ="width: 60%;" required onkeyup="pwdCheck1();">
                            <div class="sign_up_etc" id="pwdMessage1" style="margin-top: 5px; color:red; display:none;">????????? ?????? ??????????????? ??????????????????.</div>
                            <div class="sign_up_etc" style="margin-top: 5px;">8~16?????? ?????? ????????????, ??????, ????????????(!,@,#,$,%,^,&,*) ?????? ???????????????.</div>
                            <div class="sign_up_etc" style="margin-top: 5px;">??????????????? ???????????? ??????????????? ?????? ??????????????? ??????????????????.</div>
                            
                            <div class="sign_up_main">??? ??????????????????</div>
                            <input type="password" id="pwdCheck" style ="width: 60%;" required onkeyup="pwdCheck2();">
                            <div class="sign_up_etc" id="pwdMessage2" style="margin-top: 5px; color:red; display:none;">??????????????? ???????????? ????????????.</div>

                            <div class="sign_up_main">??? ?????????</div>
                            <input type="text" name="userNick" id="userNick" style="width: 40%" value="<%= loginUser.getMemNick() %>" required>
                            <button type="button" class="btn_st" id="nickCheckBtn" style="width: 19%; height: 30px; background-color: gray; color: white;" onclick="nickCheck();">????????????</button>
                            <div class="sign_up_etc" style="margin-top:5px;">2~8?????? ??????, ?????? ????????????, ?????? ?????? ???????????????.</div>

                            <div class="sign_up_main">??? ??????</div>
                            <input type="text" name="userName" id="userName" style ="width: 40%;" value="<%= loginUser.getMemName() %>" required>
                            <div class="sign_up_etc" style="margin-top:5px;">2~6?????? ????????? ?????? ???????????????.</div>

                            <div class="sign_up_main">??? ????????????</div>
                            <% 
                            	String birth = loginUser.getMemBirth();
                            	String[] birthArr = birth.split("/");
                            %>
                            <select name="year" id="year" required style="width: 150px; height: 30px;">
								<% Date d = new Date(); %>
								<% for(int i=0; i<100; i++) { %>
									<option>
										<%= d.getYear() + 1900 - i %>
									</option>
								<% } %>
								<option selected style="display: none;"><%= birthArr[0] %></option>
                            </select>
                            <select name="month" id="month" required style="width: 150px; height: 30px;" onchange="createDay(this);">
								<% for(int i=1; i<=9; i++) { %>
									<option>
										0<%= i %>
									</option>
								<% } %>
								<% for(int i=10; i<=12; i++) { %>
									<option>
										<%= i %>
									</option>
								<% } %>
                                <option selected style="display: none;"><%= birthArr[1] %></option>
                            </select>
                            <select name="day" id="day" required style="width: 150px; height: 30px;">
                                <option selected style="display: none;"><%= birthArr[2] %></option>
                            </select>

                            <div class="sign_up_main">??? ???????????????</div>
                            <input type="text" name="phone" id="phone" class="numInput" required maxlength="13" value="<%= loginUser.getMemPhone() %>">
                            <div class="sign_up_etc" style="margin-top:5px;">'-'??? ???????????? ??????????????????. (000-0000-0000 ??????)</div>
                            
                            <div class="sign_up_main">??? ????????? ??????</div>
                            <input type="text" name="email" id="email" required style="width: 60%;" value="<%= loginUser.getMemEmail() %>"> 
                            <div class="sign_up_etc" style="margin-top:5px;">'@'??? ???????????? ??????????????????.</div>
                        </div>

                        <hr style="margin-top:50px; margin-bottom:50px; background-color:gray;">

                        <div align="left">
                            <div style="color: white; font-size: 17px; font-weight: bold;">
                                >> ?????? ?????? ??????<br>
                            </div>
                        </div>
                        <br>

                        <div align="left" class="sign_up">
                            <!--
                            <div class="sign_up_main">??? ???????????????</div>
                            <img src="" width="100" height="100"><br>
                            <input type="file" name="userPic" style="color: white; margin-bottom: 10px;">
                            -->

                            <div class="sign_up_main">??? ??????</div>
                            <input type="radio" name="gender" id="M" value="M">
                            <label for="M" style="color: white; margin-right: 10px;">??????</label>
                            <input type="radio" name="gender" id="F" value="F">
                            <label for="F" style="color: white;">??????</label>
                            
                            <div class="sign_up_main">??? ??????</div>
                            <% 
                            	String address = loginUser.getMemAddress();
                            	if(address == null){
                            		address = "";
                            	}
                            %>
                            <input type="text" name="address" id="address" style="width: 70%;" value="<%= address %>">
                            
                            <div class="sign_up_main">??? ???????????? ?????? ????????? ??????????????????! (?????? ?????? ??????)</div>
                            <div id="categoryForm">
                                <input type="checkbox" id="action" name="category" value="action" onclick="btnStyle('action');">
                                <label id="action_btn" class="btn" for="action">??????</label>
                                <input type="checkbox" id="roll" name="category" value="roll" onclick="btnStyle('roll');">
                                <label id="roll_btn" class="btn" for="roll">????????????</label>
                                <input type="checkbox" id="racing" name="category" value="racing" onclick="btnStyle('racing');">
                                <label id="racing_btn" class="btn" for="racing">?????????</label>
                                <input type="checkbox" id="simul" name="category" value="simul" onclick="btnStyle('simul');">
                                <label id="simul_btn" class="btn" for="simul">???????????????</label>
                                <input type="checkbox" id="strategy" name="category" value="strategy" onclick="btnStyle('strategy');">
                                <label id="strategy_btn" class="btn" for="strategy">??????</label>
                                <input type="checkbox" id="sport" name="category" value="sport" onclick="btnStyle('sport');">
                                <label id="sport_btn" class="btn" for="sport">?????????</label>
                                <br>
                                <input type="checkbox" id="indie" name="category" value="indie" onclick="btnStyle('indie');">
                                <label id="indie_btn" class="btn" for="indie">??????</label>
                                <input type="checkbox" id="casual" name="category" value="casual" onclick="btnStyle('casual');">
                                <label id="casual_btn" class="btn" for="casual">?????????</label>
                                <input type="checkbox" id="horror" name="category" value="horror" onclick="btnStyle('horror');">
                                <label id="horror_btn" class="btn" for="horror">??????</label>
                                <input type="checkbox" id="multi" name="category" value="multi" onclick="btnStyle('multi');">
                                <label id="multi_btn" class="btn" for="multi">???????????????</label>
                                <input type="checkbox" id="card" name="category" value="card" onclick="btnStyle('card');">
                                <label id="card_btn" class="btn" for="card">??????</label>
                                <input type="checkbox" id="adventure" name="category" value="adventure" onclick="btnStyle('adventure');">
                                <label id="adventure_btn" class="btn" for="adventure">????????????</label>
                                <input type="checkbox" id="puzzle" name="category" value="puzzle" onclick="btnStyle('puzzle');">
                                <label id="puzzle_btn" class="btn" for="puzzle">??????</label>
                                <input type="checkbox" id="cooperation " name="category" value="cooperation " onclick="btnStyle('cooperation ');">
                                <br>
                                <label id="cooperation _btn" class="btn" for="cooperation ">??????</label>
                                <input type="checkbox" id="split" name="category" value="split" onclick="btnStyle('split');">
                                <label id="split_btn" class="btn" for="split">????????????</label>
                                <input type="checkbox" id="science" name="category" value="science" onclick="btnStyle('science');">
                                <label id="science_btn" class="btn" for="science">????????????</label>
                                <input type="checkbox" id="first" name="category" value="first" onclick="btnStyle('first');">
                                <label id="first_btn" class="btn" for="first">1??????</label>
                                <input type="checkbox" id="escape" name="category" value="escape" onclick="btnStyle('escape');">
                                <label id="escape_btn" class="btn" for="escape">?????????</label>
                        </div>

                        <input type="checkbox" id="agree" name="agree" value="Y"> 
                        <label for="agree" style="color:white; margin-top: 50px;">(??????) ????????? ??? SMS ????????? ?????? ????????? ???????????????.</label>

                        <button type="submit" class="btn_st btn_center" align="center">??????</button>
                        <div align="right" onclick="deleteUser();" style="color: gray; cursor: pointer; margin-top: 150px;">?????? ??????</div>
                    </div>
                </form>
                <script>
                    
                    // onsubmit ????????? int???
                    var nickCheckNum = 0;

                    function pwdCheck1(){

                        var userPwd = document.getElementById("userPwd").value;
                        var pwdMessage1 = document.getElementById("pwdMessage1");
                        var regExp = /^[a-z\d!@#$%^&*]{8,16}$/i;

                        if(regExp.test(userPwd) == true) {
                            // ???????????? ????????? ?????? ??????
                            pwdMessage1.style.display = "none";
                        } else {
                            // ???????????? ????????? ????????? ??????
                            pwdMessage1.style.display = "inline-block";
                        }

                    }

                    function pwdCheck2(){

                        var userPwd = document.getElementById("userPwd").value;
                        var pwdCheck = document.getElementById("pwdCheck").value;
                        var pwdMessage2 = document.getElementById("pwdMessage2");

                        if(userPwd == pwdCheck) {
                            // ??????????????? ????????????
                            pwdMessage2.style.display = "none";
                        } else {
                            // ??????????????? ???????????? ?????????
                            pwdMessage2.style.display = "inline-block";
                        }

                    }

                    function nickCheck(){

                        var $nickCheck = $("#userNick");
                        var $idCheck = $("#userId");
                        var $nickCheckBtn = $("#nickCheckBtn");
                        var regExp = /^[???-???a-z\d]{2,8}$/i;

                        if(regExp.test($nickCheck.val()) == true) {
                            // ????????? ????????? ??????
                            $.ajax({
                                url:"nickUpdateCheck.me",
                                data:{checkNick:$nickCheck.val(), checkId:$idCheck.val()},//??? checkNick | ??? $nickCheck.val()
                                success:function(result){
                                    if(result == 'NNNNN') {
                                        alert("?????? ??????????????? ????????? ????????? ??????????????????.");
                                        $nickCheck.focus();
                                    } else {
                                        if(confirm("??????????????? ??????????????????. ?????? ???????????? ????????????????????????? \n????????? ????????? ????????? ???????????? ????????? ??? ????????????.")) {
                                            $nickCheck.attr("readonly", true);
                                            nickCheckNum = 1;
                                            $nickCheckBtn.attr("disabled", true);
                                        } else {
                                            $nickCheck.focus();
                                        }
                                    }
                                },
                                error:function(){
                                    console.log("????????? ??????????????? ajax ??????");
                                }
                            })

                        } else {
                            // ????????? ????????? ??????
                            alert("????????? ?????? ??????????????? ?????? ??????????????????.");
                            $nickCheck.focus();
                        }

                    }

                    function createDay(el){
                        var day = document.getElementById("day");
                        var month = el.value;

                        if( month == 1 || month == 3 || month == 5 || 
                            month == 7 || month == 8 || month == 10 || 
                            month == 12 ) {
                            for(var i=1; i<=9; i++) {
                                day.innerHTML += "<option>0" + i + "</option>"
                            }
                            for(var i=10; i<=31; i++) {
                                day.innerHTML += "<option>" + i + "</option>"
                            }
                        } else if(month == 2) {
                            for(var i=1; i<=9; i++) {
                                day.innerHTML += "<option>0" + i + "</option>"
                            }
                            for(var i=10; i<=29; i++) {
                                day.innerHTML += "<option>" + i + "</option>"
                            }
                        } else{
                            for(var i=1; i<=9; i++) {
                                day.innerHTML += "<option>0" + i + "</option>"
                            }
                            for(var i=10; i<=30; i++) {
                                day.innerHTML += "<option>" + i + "</option>"
                            }
                        }
                    }

                    $(function(){
                        const gender = '<%= loginUser.getMemGender() %>';
                        // ?????? ???????????? ????????? MemAgr???
                        // "Y" | "N" | null
                        if(gender != null) {
                            if(gender.search("M") != -1) {
                                $("#M").attr("checked", true);
                            } else if(gender.search("F") != -1){
                                $("#F").attr("checked", true);
                            }
                        }
				    }) 

                    function btnStyle(elId){
                        if(document.getElementById(elId).checked == true) {
                            document.getElementById(elId+"_btn").style.background = "#0e332c";
                            document.getElementById(elId+"_btn").style.color = "white";
                        } else if(document.getElementById(elId).checked == false) {
                            document.getElementById(elId+"_btn").style.background = "white";
                            document.getElementById(elId+"_btn").style.color = "#0e332c";
                        }
                    }

                    $(function(){
                        const category = '<%= loginUser.getMemCategory() %>';
                        // ?????? ???????????? ????????? ???????????????
                        // null | "horror,card"
                        if(category != null) {
                            $("#categoryForm>input").each(function(){
                                // $(this) : ??????????????? ???????????? ???????????? ??????	
                                // $(this).val() : ?????? ??????????????? value???
                                if(category.search($(this).val()) != -1) {
                                    $(this).attr("checked", true);
                                    $("#" + $(this).val() + "_btn").css("backgroundColor", "#0e332c");
                                    $("#" + $(this).val() + "_btn").css("color", "white");
                                }
                            })
                        }
				    })

                    $(function(){
                        const agree = '<%= loginUser.getMemAgr() %>';
                        // ?????? ???????????? ????????? MemAgr???
                        // "Y" | "N" 
                        if(agree.search("Y") != -1) {
                            $("#agree").attr("checked", true);
                        }
				    }) 

                    function enrollCheck(){

                        // ??????????????? ??????
                        var userPwd = document.getElementById("userPwd").value;
                        var pwdCheck = document.getElementById("pwdCheck").value;
                        var regExpPwd = /^[a-z\d!@#$%^&*]{8,16}$/i;
                        // ????????? ??????
                        var userName = document.getElementById("userName").value;
                        var regExpName = /^[???-???]{2,6}$/;
                        // ??????????????? ??????
                        var year = document.getElementById("year").value;
                        var month = document.getElementById("month").value;
                        var day = document.getElementById("day").value;
                        // ?????????????????? ??????
                        var phone = document.getElementById("phone").value;
                        var regExpPhone = /^[\d]{3}[-]{1}[\d]{4}[-]{1}[\d]{4}$/;
                        // ???????????? ??????
                        var email = document.getElementById("email").value;
                        var regExpEmail = /^[a-z0-9_-]+@[a-z0-9_-]+\.[a-z0-9_-]+$/i;


                        if(regExpPwd.test(userPwd) == true) {
                            // ???????????? ????????? ?????? ??????

                            if(userPwd == pwdCheck) {
                                // ??????????????? ????????????
                            } else {
                                alert("??????????????? ???????????? ????????????.");
                                return false;
                            }

                        } else {
                            alert("??????????????? ????????? ?????? ??????????????????.");
                            return false;
                        }

                        if(nickCheckNum == 0) {
                            alert("????????? ???????????? ?????? ??? ????????? ??? ????????????.");
                            return false;
                        }

                        if(regExpName.test(userName) == true){
                            // ?????? ????????? ?????? ??????
                        } else {
                            alert("????????? ????????? ?????? ??????????????????.\n7??? ????????? ???????????? ????????? ????????? ??????????????? ??????????????????.");
                            return false;
                        }

                        if(regExpPhone.test(phone) == true) {
                            // ??????????????? ????????? ?????? ??????
                        } else {
                            alert("?????????????????? ????????? ?????? ??????????????????.");
                            return false;
                        }

                        if(regExpEmail.test(email) == true) {
                            // ????????? ????????? ?????? ??????
                        } else {
                            alert("?????????????????? ????????? ?????? ??????????????????.");
                            return false;
                        }


                        return true;
                    }

                    function deleteUser(){

                        if(confirm("????????? ????????????????????????? ?????? ????????? ????????? ??????????????????.")){
                            location.href = "<%=contextPath%>/delete.me";
                        }

                    }
                </script>
            </div>

        </div>

    </div>
</body>
</html>