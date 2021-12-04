<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #div{ box-sizing: border-box;}
    #sidebarOut{
        height:800px;
        width:210px;
    }
    #sideBox{
        background: rgba(0, 0, 0, 0.212);
        border:2px solid rgba(255, 255, 255, 0.333);
        border-top: none;
        width:100%;
        height:600px;
    }
    #line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    #line_2{
        width:100%;
        height:1px;
        background: rgba(255, 255, 255, 0.333);
    }
    #sideBox>ul{
        list-style-type: none;
        padding: 12px;
        margin:0px;
        text-align: center;
    }
    div>ul>li{
        padding: 2px;
        font-weight: lighter;
        font-size:15px;
    }
    div a{
        text-decoration: none;
        color:rgba(255, 255, 255, 0.589);
    }
    #myPageBtn{
        font-size: 18px; 
        color:rgb(85, 73, 59); 
    }
    #sideBox a:hover{
        text-decoration: none;
        color: rgba(255, 166, 0, 0.777); 
    }


    

</style>
</head>
<body style="background:#0e332c;">

        <div id="sidebarOut">
            
        <div id="sideBox">
            <ul>
                <!-- <li id="myPageBtn" style="font-size: 20px; font-weight: bolder; color:gray; margin-top:15px;">마이페이지</li> -->
                <li id="myPageBtn" style="font-weight: bolder; margin-top:15px;">마이페이지</li>
                <li><a href="">내 정보 수정</a></li>
                <li><a href="">장바구니</a></li>
            
            </ul>
            <div id="line_2"></div>
            <ul>
                <li><a href="">찜한 내역 조회</a></li>
                <li><a href="">주문 내역 조회</a></li>
                <li><a href="">포인트 이력 조회</a></li>
            </ul>
            <div id="line_2"></div>
            <ul>
                <li><a href="">나의 문의 내역</a></li>
                <li><a href="" >내 리뷰 조회</a></li>
            </ul>
            <div id="line_2"></div>
        </div>

    </div>
</body>
</html>