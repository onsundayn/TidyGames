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
    table {
        width:1010px;
        height:400px;
        border: 1px solid grey;
        border-collapse:collapse;
        margin: auto;
        margin-top: 100px;
        text-align: center;
        
    }
    th {
        background: rgb(236, 240, 236); 
        color: black;
        border: 1px solid rgb(109, 106, 106);
    }
    tr, td{
        border: 1px solid rgb(109, 106, 106);
        color: honeydew;
    }
    .menu-name{
        color: rgba(255, 255, 255, 0.712);
        font-weight: bold;
        font-size: 30px;
        margin-top: 50px;
        margin-left: 90px;
    }
</style>
</head>
<body style="background-color: #0e332c;">
	<%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    <%@ include file="../common/companySidebar.jsp"%>
    
    <div class="outer">
        <div class="menu-name">
            <h2>업로드 게임 목록</h2>
        </div>

        <table class="uploadList">

            <tr>
                <th>번호</th>
                <th>아이디</th>
                <th>게임</th>
                <th>등록일</th>
                <th>승인상태</th>
                <th>업데이트</th>
            </tr>
            <tr>
                <td>5</td>
                <td>ElectronicArts</td>
                <td>Battlefield2042</td>
                <td>2021-11-15</td>
                <td><button class="btn btn-sm btn-secondary">미승인</button></td>
                <td></td>
            </tr>
            <tr>
                <td>4</td>
                <td>ElectronicArts</td>
                <td>Battlefield2042</td>
                <td>2021-11-15</td>
                <td><button class="btn btn-sm btn-primary">승인</button></td>
                <td><button class="btn btn-sm btn-primary">업데이트</button></td>
            </tr>
            <tr>
                <td>3</td>
                <td>ElectronicArts</td>
                <td>Battlefield2042</td>
                <td>2021-11-15</td>
                <td><button class="btn btn-sm btn-danger">반려</button></td>
                <td></td>
            </tr>
            <tr>
                <td>2</td>
                <td>ElectronicArts</td>
                <td>Battlefield2042</td>
                <td>2021-11-15</td>
                <td><button class="btn btn-sm btn-primary">승인</button></td>
                <td></td>
            </tr>
            <tr>
                <td>1</td>
                <td>ElectronicArts</td>
                <td>Battlefield2042</td>
                <td>2021-11-15</td>
                <td><button class="btn btn-sm btn-primary">승인</button></td>
                <td><button class="btn btn-sm btn-primary">업데이트</button></td>
            </tr>

        </table>


    </div>

	

</body>
</html>