<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.TidyGames.company.model.vo.Company"%>
<%
	Company c = (Company)request.getAttribute("c");
%>
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
        width: 700px;
        height: 400px;
        font-weight: bold;
        border-radius: 7px;
        margin-top: 100px;
        padding-top: 30px;
    }
    .menu-name{
        color: rgba(255, 255, 255, 0.712);
        font-weight: bold;
        font-size: 30px;
        margin-top: 50px;
        margin-left:90px;
    }
    .tbl{
        width:100%;
        height:90%;
        text-align: center;
        margin: auto;
        border-collapse:separate;
        border-spacing: 25px;
    }
    table>tbody>tr>td{
        border-radius: 10px;
        background-color: rgb(153, 151, 151);
    }
    table>tbody>tr>th{
        width: 140px;
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
            	<input type="hidden" name="cno" value="<%=loginCompany.getCompanyNo()%>">
            <table class="tbl">
                <tr>
                    <th>게임사</th>
                    <td colspan="4"><%=c.getCompanyName()%></td>
                </tr>
                <tr>
                    <th>아이디</th>
                    <td colspan="4"><%=c.getCompanyId()%></td>
                </tr>
                <tr>
                    <th>등록코드</th>
                    <td colspan="4"><%=c.getCompanyPwd()%></td>
                </tr>
                <tr>
                    <th>대표자</th>
                    <td colspan="4"><%=c.getCompanyHead()%></td>
                </tr>
                <tr>
                    <th>등록일자</th>
                    <td colspan="4"><%=c.getCompanyEnroll()%></td>
                </tr>
            </table>
        </div>
    </div>

</body>
</html>