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
        width:210px;
        height:800px;

    }
    #sideBox{
        background: rgba(0, 0, 0, 0.212);
        border:2px solid rgba(255, 255, 255, 0.333);
        border-top: none;
        width:100%;

        
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
        padding: 18px;
        margin:0px;
        text-align: center;
    }
    div>ul>li{
        padding: 2px;
        font-size: 15px;
        font-weight: lighter;
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
                <li id="myPageBtn" style="font-weight: bolder; ">회원관리</li>
                <li><a href="">회원 목록</a></li>
                <li><a href="">블랙리스트</a></li>
                <li><a href="">신고 내역</a></li>
                <li><a href="">신고 내역 조회</a></li>
            
            </ul>
            <div id="line_2"></div>
            <ul>
                <li id="myPageBtn" style="font-weight: bolder">게임사 관리</li>
                <li><a href="<%=contextPath%>/enroll.co" id="enrollco">게임사 등록</a></li>
                <li><a href="<%=contextPath%>/list.co" id="listco">게임사별 목록 조회</a></li>
            </ul>
            <div id="line_2"></div>
            <ul>
                <li id="myPageBtn" style="font-weight: bolder">게임 관리</li>
                <li><a href="">카테고리 관리</a></li>
                <li><a href="">게임 업로드 요청 목록</a></li>
                <li><a href="">판매중인 게임 목록</a></li>
            </ul>
            <div id="line_2"></div>
            <ul>
                <li id="myPageBtn" style="font-weight: bolder">결제 내역 조회</li>
                <li><a href="">주문 관리</a></li>
                <li><a href="">환불 요청 목록</a></li>
                <li><a href="">포인트 내역</a></li>
            </ul>
            <div id="line_2"></div>
        </div>

    </div>
</body>
</html>