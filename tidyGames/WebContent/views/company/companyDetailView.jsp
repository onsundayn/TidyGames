<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#listco{color:orange;}
    .outer{
	    background-color: #0e332c;
	    color:white;
	    width:1000px;
	    height:900px;
	    margin:auto;
	    margin-top:50px;
	    margin-left:400px;
    }
    h2{
    	font-weight:normal;
    }
    .navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
    .bar{
       float:left;
       margin-left:5px;
    }
    #enroll-com-form input{
        width:600px;
        height:30px;
    }
</style>
</head>
<body>

		<%@ include file="../common/topbar.jsp" %>
		
		<div class="navi">
			<%@ include file="../common/navibar.jsp" %>
        </div>
        
        <div class="bar">
            <%@ include file="../common/adminSidebar.jsp" %>
        </div>
        
	    <div class="outer">
	    

        <h2>게임사 상세 조회</h2>
        <br><br><br>

        <form action="" method="post" id="enroll-com-form">

            <table>
                <tr>
                    <th width="100"><h4>게임사</h4></th>
                    <td><h5>보람게임즈</h5></td>
                </tr>
                <tr><td colspan=2 height="30"></td></tr>
                <tr>
                    <th><h4>아이디</h4></th>
                    <td><h5>BoramGames</h5></td>
                </tr>
                <tr><td colspan=2 height="30"></td></tr>
                <tr>
                    <th><h4>등록코드</h4></th>
                    <td><h5>vkEnsKl</h5></td>
                </tr>
                <tr><td colspan=2 height="30"></td></tr>
                <tr>
                    <th><h4>대표자</h4></th>
                    <td><h5>보람강</h5></td>
                </tr>
                <tr><td colspan=2 height="30"></td></tr>
                <tr>
                    <th style="display: flow-root;"><h4>코멘트</h4></th>
                    <td><p>기대되는 신생 게임 회사</p></td>
                </tr>
                <tr><td colspan=2 height="30"></td></tr>
            </table>

            <div align="right" style="width:700px">
                <button type="reset" class="btn btn-secondary">취소</button>
                <button type="submit" class="btn btn-info">등록</button>
            </div>

        </form>

    </div>

</body>
</html>