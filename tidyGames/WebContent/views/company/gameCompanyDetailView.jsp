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
    .table{
        width:520px;
        height:350px;
        border-spacing: 20px;
        text-align: center;
    }
    table>tbody>tr>td{
        border-radius: 10px;
        background-color: rgb(153, 151, 151);
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
            <table class="table">
                <tr>
                    <th>게임사</th>
                    <td colspan="4">ddddddddd</td>
                </tr>
                <tr>
                    <th>아이디</th>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <th>등록코드</th>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <th>대표자</th>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <th>등록일자</th>
                    <td colspan="4"></td>
                </tr>
            </table>
        </div>
    </div>

</body>
</html>