<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#community{color:orange;}
	.outer{
		background-color: #0e332c;
		color:white;
		width:1200px;
		height:1100px;
		margin:auto;
		margin-top:50px;
	}
	.include-area{
		width:1500px;
		margin:auto;
		align:center;
		border-bottom:2px solid rgba(255, 255, 255, 0.555);
	}
	.write-form{
	    background-color: lightgray;
	    width:1100px;
	    height:1000px;
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

	<div class="include-area">
		<%@ include file="../common/topbar.jsp" %>
		<%@ include file="../common/navibar.jsp" %>
	 </div>

    <div class="outer">

        <h2>TIDY COMMUNITY  <i class="far fa-comments"></i></h2>

        <div class="write-form">
			<br><br>
            <form action="" id="enroll-form" method="post">
				
                <table>
                    <tr>
                        <th width="100"><h5>제목</h5></th>
                        <td width="800" heigt="30" colspan="4"><input type="text" name="title" required></td>
                    </tr>
                    <tr><td colspan="5" height="20"></td></tr>
                    <tr>
                        <td colspan="5" style="background:white">
                            <textarea rows="30" name="content" required style="resize:none"></textarea>
                        </td>
                    </tr>
                    <tr><td colspan="5" height="20"></td></tr>
                    <tr>
                    <th>첨부파일</th>
                    <td width="50"><input type="file" name="file1"></td>
                    <td width="50"><input type="file" name="file2"></td>
                    <td width="50"><input type="file" name="file3"></td>
                    <td width="50"><input type="file" name="file4"></td>
                	</tr>
                </table>
                <br>
                <div align="right" style="width:1000px">
                    <button type="button" onclick="history.back();" class="btn btn-sm btn-secondary">뒤로가기</button>
                    <button type="reset" class="btn btn-sm btn-info">취소</button>
                    <button type="submit" class="btn btn-sm btn-success">등록</button>
                </div>


            </form>

        </div>
        
    </div>

</body>
</html>