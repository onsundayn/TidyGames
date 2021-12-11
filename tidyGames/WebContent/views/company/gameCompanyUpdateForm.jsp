<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .menu-name{
        color: rgba(255, 255, 255, 0.712);
        font-weight: bold;
        font-size: 30px;
        margin-top: 50px;
        margin-left: 450px;
    }
    .game-info{
        width:1000px;
        height:250px;
        margin: auto;
        margin-top: 60px;
    }
    .game-list{
        background: rgb(43, 65, 60);
        width:1000px;
        height:200px;
        margin-top: 20px;
        margin-bottom: 30px ;
        float: right;
        flex: 2;
        display:flex;
    }
    .game-list>div{
        display:inline-block;
        box-sizing: border-box;
    }
    .game-title-img{
        width: 300px;
        height:200px;
        box-sizing: border-box;
        flex:1;
    }
    .game-name,.star-rating{
        width:180px;
        color: white;
        font-weight: bold;
        flex: 1;
        padding-top: 45px;
    }
    .game-list img{
        width: 310px;
        height:200px;
        object-fit: fill;
        box-sizing: border-box;
    }
    #ptag{
        margin:auto;
        margin-top: 30px;
        color: rgba(255, 255, 255, 0.774);
        font-weight: bold;
        font-size: 25px;
    }
    #upfile{
        border:1px solid rgba(255, 255, 255, 0.712);
        border-radius: 3px;
        background:rgba(255, 255, 255, 0.712);
        color: black;
        font-size: 17px;
    }
    #upfile:hover{
        margin: auto;
        background-color: rgb(202, 133, 5);
    }

</style>
</head>
<body style="background-color: #0e332c;">
	<%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    <%@ include file="../common/companySidebar.jsp"%>
	
	<div class="outer">

        <div class="menu-name">
            <h2>게임 정보 업데이트</h2>
        </div>

        <div class="game-info">
            <div class="game-list">
                <div class="game-title-img">
                    <img src="<%=contextPath%>/resources/image/Dead-Cells.jpg">
                </div>
                <div class="game-name" align="center">
                    슬라임랜처<br>
                    Slime Rancher
                    <br><br>
                    출시일<br>
                    2016년 2월 27일
                </div>
                <div class="star-rating" align="center" style="font-size: 20px;">
                    <br>
                    ★★★★★
                </div>
            </div>

            <div class="game-list">
                <p id="ptag" align="center">
                    업로드 할 파일 선택<br><br>
                    <input href="" type="file" id="upfile" name="upfile">
                </p>
                
            </div>
        </div>
        

    </div>
    

</body>
</html>