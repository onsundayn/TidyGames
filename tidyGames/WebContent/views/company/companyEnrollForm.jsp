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
        width:1000px;
        height:1000px;
        margin:auto;
        margin-top:200px;
        }
        h2, h3{
            font-weight:normal;
        }
        #enroll-com-form input{
            width:550px;
            height:20px;
        }
    </style>
</head>
<body>

	    <div class="outer">

        <h2>게임사 등록</h2>
        <br><br>

        <form action="" method="post" id="enroll-com-form">

            <table>
                <tr>
                    <th width="100"><h3>게임사</h3></th>
                    <td><input type="text" name="companyName" required></td>
                </tr>
                <tr>
                    <th><h3>아이디</h3></th>
                    <td><input type="text" name="companyId" required></td>
                </tr>
                <tr>
                    <th><h3>등록코드</h3></th>
                    <td><h3 style="color:lightgray;">등록코드는 등록시 자동으로 부여됩니다</h3></td>
                </tr>
                <tr>
                    <th><h3>대표자</h3></th>
                    <td><input type="text" name="companyHead" required></td>
                </tr>
                <tr>
                    <th style="display: flow-root;"><h3>코멘트</h3></th>
                    <td><textarea name="comment" cols="74" rows="10" style="resize:none"></textarea></td>
                </tr>
            </table>
            <br><br><br>
            <div align="right" style="width:700px">
                <button type="reset" class="btn btn-sm btn-secondary">취소</button>
                <button type="submit" class="btn btn-sm btn-info">등록</button>
            </div>

        </form>

    </div>

</body>
</html>