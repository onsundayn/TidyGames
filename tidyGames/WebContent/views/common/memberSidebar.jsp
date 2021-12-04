<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #div{ box-sizing: border-box;}
    #sideBox{
        /* background: ; */
        background: rgba(0, 0, 0, 0.212);
        border:2px solid rgba(255, 255, 255, 0.555);
        border-top: none;
        width:220px;
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
        background: rgba(255, 255, 255, 0.555);
    }
    #sideBox>ul{
        list-style-type: none;
        color:rgba(255, 255, 255, 0.589);
        padding: 12px;
        margin:0px;
        text-align: center;    
    }
    #sideBox li{
        padding: 2px;
        font-weight: lighter
    }
    #myPageBtn{
        font-size: 20px;
        /* font-weight: bolder;     */
    }
    #sideBox>ul>li:hover{
        color: orange; 
    }

    

</style>
</head>
<body style="background:#0e332c;">
		<%@ include file="topbar.jsp"%>
        <%@ include file="navibar.jsp"%>
        
        <div id="line_1"></div>

        <div id="sideBox">
            <ul>
                <li id="myPageBtn" style="font-weight: bolder; color:gray; margin-top:15px;">마이페이지</li>
                <li>내 정보 수정</li>
                <li>장바구니</li>
            </ul>
            <div id="line_2"></div>
            <ul>
                <li>찜한 내역 조회</li>
                <li>주문 내역 조회</li>
                <li>포인트 이력 조회</li>
            </ul>
            <div id="line_2"></div>
            <ul>
                <li>나의 문의 내역</li>
                <li>내 리뷰 조회</li>
            </ul>
            <div id="line_2"></div>
        </div>


</body>
</html>