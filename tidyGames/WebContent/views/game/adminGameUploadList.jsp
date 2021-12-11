<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>GameUploadList</title>
<style>
#parent {
	display: grid;
	grid-template-columns: repeat(5, 1fr);
	grid-template-rows: repeat(5, 1fr);
	color: white;
	width: 1500px;
	height: 900px;
	margin: auto;
}

#div1 {
	grid-area: 1/2/2/4;
	margin-top: 100px;
}

#div2 {
	grid-area: 2/2/5/5;
}

#selectOption {
	margin-bottom: 20px;
}

#list-area {
	text-align: center;
}

#table2 th {
	background: lightgray;
	color: black;
	border: 2px solid white;
}

#table2 td {
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


	<div id="parent">
		<div id="div1">
			<h1>게임 업로드 요청 목록</h1>
		</div>

		<div id="div2">

			<div id="selectOption" align="right">
				<table>
					<tbody>
						<tr>
							<td><select style="height: 30px">
									<option>아이디</option>
									<option>게임</option>
									<option>등록일</option>
									<option>승인</option>
									<option>미승인</option>
							</select></td>
							<td>
								<form>
									<input type="text" name="etc">
								</form>
							</td>
							<td>
								<button type="button" class="btn btn-sm btn-secondary">
									조회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div id="table2">

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
							<td>1</td>
							<td>Rockstar_Games</td>
							<td>Red Dead Redemption 2</td>
							<td>2019-12-06</td>
							<td><span class="badge bg-default" id="bdg">미승인</span></td>
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
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="badge bg-info" id="bdg">승인</span></td>
						</tr>
						<tr>
							<td></td>
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