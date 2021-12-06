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
        height:900px;
        margin:auto;
        margin-top:50px;
        }
        .write-form{
            background-color: lightgray;
            width:1000px;
            height:730px;
            margin:auto;
            margin-top:50px;
        }
        #enroll-form input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
    table{
        margin:auto;
        color:rgb(46, 45, 45);
    }
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp" %>
	<%@ include file="../common/navibar.jsp" %>

    <div class="outer">

        <h2>TIDY COMMUNITY  <i class="far fa-comments"></i></h2>

        <div class="write-form">
			<br><br>
            <form action="" id="enroll-form">
				
                <table>
                    <tr>
                        <th width="100"><h5>제목</h5></th>
                        <td width="500" heigt="30"><input type="text" name="title" required></td>
                    </tr>
                    <tr>
                        <th><h5>내용</h5></th>
                        <td width="450"><div align="right"><button>첨부파일</button></div></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <textarea rows="20" name="content" style="resize:none" required></textarea>
                        </td>
                    </tr>
                </table>
                <br>
                <div align="right" style="width:800px">
                    <button type="button" onclick="history.back();">뒤로가기</button>
                    <button type="reset">취소</button>
                    <button type="submit">등록</button>
                </div>


            </form>

        </div>

    </div>

</body>
</html>