<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        width:700px;
        height:360px;
        margin-top: 80px; 
        margin-left: 190px;
    }
    #profileBox>*{
        float: left;
        width: 50%;
    }
    #profileImg>img{
        width:100%;
        height:100%;
    }
    #nick{
        font-size:32px;
        font-weight: bolder;
        color:rgba(255, 255, 255, 0.794);
        margin-top:90px;
        margin-bottom: 0px;
    }
    #id{
        font-size:24px;
        font-weight: bolder;
        color:rgba(0, 0, 0, 0.666);
    }
    #profileImg{
        width:200px;
        height:200px;
        margin: 80px 60px;
    }
    #edit{
        margin: 50px 0px 0px 0px;
        text-decoration: none;
    }
    #edit>a:hover{
        text-decoration: none;
        color: rgba(255, 166, 0, 0.777); 
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
            <div id="intro">프로필</div>
            <div id="line_3" style="margin:10px 50px;"></div>

            <div id="profileBox">
                <div id="box1">
                    <div id="profileImg">
                        <!-- case1. 프로필을 설정하지 않았을 때 -->
                        <img src="<%= contextPath %>/resources/image/profile.png">
                        <!-- case2. 프로필을 설정했을 때 -->
                        <!-- <img> -->
                    </div>
                </div>
                <div id="box2">
                    <label id="nick">NickName</label> <br>
                    <label id="id">userId</label>
                    <div id="edit">
                        <a href="">>> edit profile</a>
                    </div>
                    
                </div>
            </div>

        </div>

    </div>
</body>
</html>