<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        .outer{
        background-color: #0e332c;
        color:white;
        width:800px;
        height:600px;
        margin:auto;
        margin-top:200px;
        }
        h2, h3{
            font-weight:normal;
        }
        #enroll-com-form input{
            width:600px;
            height:20px;
        }
        .comm{
            display:inline-table; 
            margin-left:23px;
        }
    </style>
</head>
<body>
        <%@ include file="../common/topbar.jsp" %>
        <%@ include file="../common/navibar.jsp" %>

	    <div class="outer">

        <h1>게임사 등록</h1>
        <br><br>

        <form action="" method="post" id="enroll-com-form">

            <table>
                <tr>
                    <th width="100"><h2>게임사</h2></th>
                    <td><input type="text" name="companyName" required></td>
                </tr>
                <tr>
                    <th><h2>아이디</h2></th>
                    <td><input type="text" name="companyId" required></td>
                </tr>
                <tr>
                    <th><h2>등록코드</h2></th>
                    <td><h3 style="color:lightgray;">등록코드는 등록시 자동으로 부여됩니다</h3></td>
                </tr>
                <tr>
                    <th><h2>대표자</h2></th>
                    <td><input type="text" name="companyHead" required></td>
                </tr>
            </table>
            <h2 class="comm">코멘트</h2>
            <textarea name="comment" cols="81" rows="10" class="comm" style="resize:none" required></textarea>
            <br><br><br>
            <div align="right" style="width:700px">
                <button type="reset" >취소</button>
                <button type="submit" class="btn btn-outline-primary">등록</button>
            </div>

        </form>

    </div>

</body>
</html>