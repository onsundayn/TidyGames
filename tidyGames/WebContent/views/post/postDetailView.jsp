<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.TidyGames.post.model.vo.Post"%>
<%
	Post p = (Post) request.getAttribute("post");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#community {
	color: orange;
}

.include-area {
	width: 1500px;
	margin: auto;
	align: center;
	border-bottom: 2px solid rgba(255, 255, 255, 0.555);
}

.outer {
	size: auto;
	background-color: #0e332c;
	color: white;
	width: 1200px;
	margin: auto;
	margin-top: 50px;
}

.underline {
	border-bottom: 2px solid rgba(83, 79, 79, 0.333);
}

.view-form {
	size: auto;
	background-color: lightgray;
	width: 1200px;
	margin: auto;
}

#read-form {
	margin: auto;
	width: 1100px;
}

#enroll-form input, #enroll-form textarea {
	width: 100%;
	box-sizing: border-box;
}

table {
	color: black;
}
</style>
</head>
<body style="background-color: #0e332c;">

	<div class="include-area">
		<%@ include file="../common/topbar.jsp"%>
		<%@ include file="../common/navibar.jsp"%>
	</div>

	<div class="outer">

		<h2>
			TIDY COMMUNITY <i class="far fa-comments"></i>
		</h2>
		<br>
		<div align="right">
			<button type="button" class="btn btn-sm btn-warning"
				data-toggle="modal" data-target="#myModal">신고</button>
			<a href="" class="btn btn-sm btn-info">수정</a> <a href=""
				class="btn btn-sm btn-danger">삭제</a>
		</div>
		<br>
		<div class="view-form">
			<br>
			<br>
			<div id="read-form">

				<div class="underline">
					<table>
						<tr>
							<th width="60"><h5>제목</h5></th>
							<td colspan="7"><h6><%=p.getPostName()%></h6></td>
						</tr>
						<tr>
							<td colspan="8" height="20"></td>
						</tr>
						<tr>
							<th width="60">작성자</th>
							<td width="100"><%=p.getPostWriter()%></td>
							<th width="60">작성일</th>
							<td width="200"><%=p.getPostModify()%></td>
							<th width="70">조회수</th>
							<td width="80"><%=p.getPostView()%></td>
							<th width="70">추천수</th>
							<td width="80"><%=p.getPostLike()%></td>
						</tr>
						<tr>
							<td colspan="8" height="20"></td>
						</tr>
					</table>
				</div>

				<div class="underline">
					<table>
						<tr>
							<td colspan="7" height="20"></td>
						</tr>
						<tr>
							<th width="50" style="display: flow-root"><h5>내용</h5></th>
							<td colspan="6"><p width="1000" height="20000"><%=p.getPostContent()%></p></td>
						</tr>
						<tr>
							<td colspan="6" height="20"></td>
						</tr>
						<tr>
							<td></td>
							<td><i class="far fa-comment-dots fa-2x"></i></td>
							<th>댓글</th>
							<td width="50">123</td>
							<td><i class="far fa-heart fa-2x"></i></td>
							<th>추천</th>
							<td><%=p.getPostLike()%></td>
						</tr>
						<tr>
							<td colspan="7" height="20"></td>
						</tr>
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
							<td><button type="button" class="btn btn-sm btn-warning"
									data-toggle="modal" data-target="#myModal">신고</button></td>
						</tr>
					</table>
				</div>
				<!-- 댓글 -->

				<br>
			</div><!-- read-form -->
		</div><!-- view-form -->
	</div><!-- outer -->
	<br>
	<div align="center">
		<a href="<%=contextPath%>/detail.po?num=<%=p.getPostNo()-1%>" class="btn btn-sm btn-secondary">이전글</a> 
		<a href="<%=contextPath%>/list.po?cpage=1" class="btn btn-sm btn-secondary">목록</a> 
		<a href="<%=contextPath%>/detail.po?num=<%=p.getPostNo()+1%>" class="btn btn-sm btn-secondary">다음글</a>
	</div>
	<br>
	<br>

	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">신고 사유를 선택해주세요</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div>
						<input type="radio" id="r1" name="report" value="1" checked><label
							for="r1">욕설, 비방, 혐오</label>
					</div>
					<div>
						<input type="radio" id="r2" name="report" value="2"><label
							for="r2">부적절한 홍보</label>
					</div>
					<div>
						<input type="radio" id="r3" name="report" value="3"><label
							for="r3">루머 유포</label>
					</div>
					<div>
						<input type="radio" id="r4" name="report" value="4"><label for="r4">음란, 청소년 유해</label>
					</div>
					<div>
						<input type="radio" id="r5" name="report" value="5"><label for="r5">개인 정보 유출, 명예훼손</label>
					</div>
					<div>
						<input type="radio" id="r6" name="report" value="6"><label for="r6">도배, 스팸</label>
					</div>
					<div>
						<input type="radio" id="r7" name="report" value="7">기타(신고사유를 직접 입력해주세요)
					</div>
					<br>
					<div>
						<label for="r7"><textarea cols="60" rows="4"
								style="resize: none" placeholder="신고 사유 입력 (최대 160자 이내)"></textarea>
					</div>
					<div class="modal-footer">
						<input type="hidden" id="reportNo" value="<%=p.getPostNo()%>">
						<input type="hidden" name="reportedMemNo" value="<%=p.getMemNo()%>">
						<button id="postReport" class="btn btn-info">신고완료</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			$(function(){
				$("#postReport").click(function(){
					const reportNo = $(".modal-footer").children().eq(0).val();
					console.log(reportNo);
					const reportedMemNo = $(".modal-footer").children().eq(1).val();
					console.log(reportedMemNo);
					
					
				})
			})
		</script>
</body>
</html>