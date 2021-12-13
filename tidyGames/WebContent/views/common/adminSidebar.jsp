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
    #empty{
        /* 사이드바 하단 영역의 여백 조절 */
        height:160px;
    }
    #tidy{
        font-size:20px;
        color:white;
        /* background: rgba(82, 48, 34, 0.438); */
    }
    

    

</style>
</head>
<body style="background:#0e332c;">
        
        <div id="sidebarOut">
            
        <div id="sideBox">
            <ul id="tidy">Tidy Games</ul>
            <div id="line_2"></div>
            <ul>
                <!-- <li id="myPageBtn" style="font-size: 20px; font-weight: bolder; color:gray; margin-top:15px;">마이페이지</li> -->
                <li id="myPageBtn" style="font-weight: bolder; ">회원관리</li>
                <li><a href="<%= request.getContextPath() %>/memberList.me" id="memberList">회원 목록</a></li>
                <li><a href="<%= request.getContextPath() %>/blacklist.me" id="blacklist">블랙리스트</a></li>
                <li><a href="<%= request.getContextPath() %>/reportWait.re" id="reportSelect">신고 내역</a></li>
                <li><a href="<%= request.getContextPath() %>/reportList.re" id="reportList">신고 내역 조회</a></li>
            
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
                <li><a href="<%=contextPath%>/catelist.ga" id="catelistga">카테고리 관리</a></li>
                <li><a href="<%=contextPath%>/uplist.ga" id="uplistga">게임 업로드 요청 목록</a></li>
                <li><a href="<%=contextPath%>/list.ga" id="listga">판매중인 게임 목록</a></li>
            </ul>
            <div id="line_2"></div>
            <ul>
                <li id="myPageBtn" style="font-weight: bolder">결제 내역 조회</li>
                <li><a href="">주문 관리</a></li>
                <li><a href="">환불 요청 목록</a></li>
                <li><a href="">포인트 내역</a></li>
            </ul>
            <div id="line_2"></div>
            <ul>
                <li id="myPageBtn" style="font-weight: bolder">고객센터</li>
                <li><a href="<%= request.getContextPath() %>/qnaList.me" id="qnaList">1:1 문의</a></li>
            </ul>

            <!-- <div id="line_2"></div> -->
            <div id="empty"></div>
        </div>

    </div>
</body>
</html>