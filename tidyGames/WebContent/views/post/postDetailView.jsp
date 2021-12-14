<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#community{color:orange;}
	.include-area{
		width:1500px;
		margin:auto;
		align:center;
		border-bottom:2px solid rgba(255, 255, 255, 0.555);
	}
	.outer{
		size:auto;
		background-color: #0e332c;
		color:white;
		width:1200px;
		margin:auto;
		margin-top:50px;
	}
	.underline{border-bottom:2px solid rgba(83, 79, 79, 0.333);}
	.view-form{
		size:auto;
	    background-color: lightgray;
	    width:1200px;
	    margin:auto;
	}
	#read-form{
		margin:auto;
		width:1100px;
	}
	#enroll-form input, #enroll-form textarea{
		width:100%;
		box-sizing:border-box;
	 }
	 table{
		 color:black;
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
		<br>
		<div align="right">
			<a href="" class="btn btn-sm btn-warning">신고</a>
			<a href="" class="btn btn-sm btn-info">수정</a>
			<a href="" class="btn btn-sm btn-danger">삭제</a>
		</div>
		<br>
        <div class="view-form">
			<br><br>
            <div id="read-form">
				
				<div class="underline">
					<table>
						<tr>
							<th width="60"><h5>제목</h5></th>
							<td colspan="7"><h6>이곳은 제목 들어갈 자리</h6></td>
						</tr>
						<tr><td colspan="8" height="20"></td></tr>
						<tr>
							<th width="60">작성자</th>
							<td width="150">작성자입니다</td>
							<th width="70">작성일</th>
							<td width="120">2021-12-12</td>
							<th width="70">조회수</th>
							<td width="80">123</td>
							<th width="70">추천수</th>
							<td width="80">456</td>
						</tr>
						<tr><td colspan="8" height="20"></td></tr>
					</table>
				</div>

				<div class="underline">
					<table>
						<tr><td colspan="7" height="20"></td></tr>
						<tr>
							<th width="50" style="display: flow-root"><h5>내용</h5></th>
							<td colspan="6"><p width="1000" height="20000">내용이 들어갈 자리</p></td>
						</tr>
						<tr><td colspan="6" height="20"></td></tr>
						<tr>
							<td></td>
							<td><i class="far fa-comment-dots fa-2x"></i></td>
							<th>댓글</th>
							<td width="50">123</td>
							<td><i class="far fa-heart fa-2x"></i></td>
							<th>추천</th>
							<td>456</td>
						</tr>
						<tr><td colspan="7" height="20"></td></tr>
					</table>
				</div>

				<div class="comment-view">
					<table>
						<tr>
							<td></td>
							<th style="display: flow-root" width="70">닉네임</th>
							<td><p width="500" size="auto">댓글 내용 자리...</p></td>
							<td><a>수정</a></td>
							<td><a>삭제</a></td>
							<td><a>신고</a></td>
						</tr>
					</table>
				</div>

                <br>
				
				
            </div>		
        </div>
    </div>
	<br>
	<div align="center">
		<a href="" class="btn btn-sm btn-secondary">이전글</a>
		<a href="" class="btn btn-sm btn-secondary">목록</a>
		<a href="" class="btn btn-sm btn-secondary">다음글</a>
	</div>
	<br><br>
</body>
</html>