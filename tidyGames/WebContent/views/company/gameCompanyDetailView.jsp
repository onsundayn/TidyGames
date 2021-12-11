<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        width:1200px;
        height:800px;
        margin: auto;
    }
    .info{
        background: #d1d3d3e8;
        width: 600px;
        height: 400px;
        font-weight: bold;
        border-radius: 7px;
        padding-top: 40px;
        margin-top: 110px;
    }
    .info input{
        background: #a0a1a1;
        width:300px;
        margin-left: 30px;
    }
    .menu-name{
        color: rgba(255, 255, 255, 0.712);
        font-weight: bold;
        font-size: 30px;
        margin-top: 50px;
        margin-left:90px;
    }
</style>
</head>
<body style="background-color: #0e332c;">
	<%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    <%@ include file="../common/companySidebar.jsp"%>
    
    <div class="outer" align="center">
        
        <div class="menu-name" align="left">
            <h2>게임사 정보 조회</h2>
        </div>

        <div class="info">
            <br><br>
            아이디  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="moraguhae" readonly><br><br>
            일련번호  &nbsp;&nbsp;&nbsp;&nbsp;<input type="password" value="123456" readonly><br><br>
            대표자정보  <input type="text" value="도지현" readonly><br><br>
            게임사  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="SemiOfLegend" readonly><br><br>
        </div>
    </div>

</body>
</html>