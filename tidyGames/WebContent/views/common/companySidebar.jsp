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
    #line{
        width:100%;
        height:1px;
        background: rgba(255, 255, 255, 0.333);
    }
    #sideBox>ul{
        list-style-type: none;
        padding: 15px;
        margin:0px;
        text-align: center;
    }
    div>ul>li{
        padding: 8px;
        font-size: 15px;
        font-weight: lighter;
    }
    div a{
        text-decoration: none;
        color:rgba(255, 255, 255, 0.589);
    }
    #companyPageBtn{
        padding: 12px;
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
                
                <li id="companyPageBtn" style="font-weight: bolder; ">게임사 페이지</li>
                <li><a href="">내 정보 조회</a></li>
               
            
            </ul>
            <div id="line"></div>
            <ul>
                <li><a href="">게임 업로드</a></li>
                <li><a href="">업로드 게임 목록</a></li>
                <li><a href="">게임 정보 업데이트</a></li>
            </ul>
            <div id="line"></div>
            <ul>
                
                <li><a href="">게임 문의 내역</a></li>

            </ul>
            <div id="line_2"></div>
            
        </div>

    </div>
</body>
</html>