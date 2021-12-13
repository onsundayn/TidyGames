<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>GameUploadList</title>
<style>
#uplistga {
	color: orange;
}

#parent {
	display: grid;
	grid-template-columns: repeat(5, 1fr);
	grid-template-rows: repeat(5, 1fr);
	color: white;
	width: 1500px;
	height: 900px;
	margin: auto;
}
#line1{
		margin:0 auto;
        width:1500px;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    } 


#div1 {
	grid-area: 1/2/5/5;
	margin-top: 20px;
}

#selectOption {
	margin-bottom: 20px;
}

#list-area {
	text-align: center;
}

#list-area th {
	background: lightgray;
	color: black;
	border: 2px solid white;
}

#list-area td {
	border: 2px solid white;
	color: white;
}

#bdg {
	font-size: 0.9em;
}

#pageNav {
	margin: 30px;
}
</style>



</head>
<body style="background: #0e332c;">

	<%@ include file="../common/topbar.jsp"%>
	<%@ include file="../common/navibar.jsp"%>
	
	<div id="line1"></div>
	<div id="parent">

		<%@ include file="../common/adminSidebar.jsp"%>

		<div id="div1">
			<h1>게임 업로드 요청 목록</h1>




			<div id="selectOption" align="right" style="margin-top: 30px">
				<form>
					<table>
						<tbody>
							<tr>
								<td><select class="form-control" name="searchField">
										<option>아이디</option>
										<option>게임</option>
										<option>등록일</option>
										<option>승인</option>
										<option>미승인</option>
								</select></td>
								<td>
								<td><input type="text" class="form-control"
									placeholder="검색어 입력" name="searchText" maxlength="50">
								</td>
								<td>
									<button type="submit" class="btn btn-secondary">조회</button>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>

			<div>
				<table class="table table-hover" id=list-area>
					<thead>
						<tr>
							<th width="70px">번호</th>
							<th width="170px">아이디</th>
							<th width="300px">게임</th>
							<th width="110px">등록일</th>
							<th width="100px">승인상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="5">조회된 게시글이 없습니다.</td>
						</tr>

						<tr>
							<td>1</td>
							<td>Rockstar_Games</td>
							<td>Red Dead Redemption 2</td>
							<td>2019-12-06</td>
							<td><span class="badge bg-secondary" id="bdg">미승인</span></td>
						</tr>
						<tr>
							<td>2</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>3</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>4</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>5</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>6</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>7</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>8</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>9</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td>10</td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
					</tbody>
				</table>
			</div>


			<div id="pageNav">

				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">6</a></li>
						<li class="page-item"><a class="page-link" href="#">7</a></li>
						<li class="page-item"><a class="page-link" href="#">8</a></li>
						<li class="page-item"><a class="page-link" href="#">9</a></li>
						<li class="page-item"><a class="page-link" href="#">10</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

	</div>




</body>
</html>