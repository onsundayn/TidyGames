<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>CategoryList</title>
<style>
#catelistga {
	color: orange;
}

#line1{
		margin:0 auto;
        width:1500px;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
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



#div1 {
	grid-area: 1/2/5/5;
	margin-top: 20px;
}

#enbtn {
	margin-top: 20px;
}

#content {
	margin: 50px;
}

.enform {
	position: fixed;
	background: lightgrey;
	z-index: 999;
	padding: 15px;
	box-shadow: 0 0 5px gray;
	padding-top: 20px;
	padding-bottom: 0px;
	border-radius: 5px;
	left: 40%;
	display: none;
}

.upform {
	position: fixed;
	background: lightgrey;
	z-index: 999;
	padding: 15px;
	box-shadow: 0 0 5px gray;
	padding-top: 20px;
	padding-bottom: 0px;
	border-radius: 5px;
	left: 40%;
	display: none;
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
			<div id="header">
				<h1>카테고리 목록</h1>
			</div>
			<div id="enbtn" align="right">
				<button type="button" class="btn btn-secondary" id="add_category">추가</button>
			</div>
			<div id="content">
				<button type="button" class="btn btn-light" id="action">액션</button>
				<button type="button" class="btn btn-light" id="rollplaying">롤플레잉</button>
				<button type="button" class="btn btn-light">레이싱</button>
				<button type="button" class="btn btn-light">시뮬레이션</button>
				<button type="button" class="btn btn-light">전략</button>
				<button type="button" class="btn btn-light">스포츠</button>
				<button type="button" class="btn btn-light">인디</button>
				<button type="button" class="btn btn-light">캐주얼</button>
				<button type="button" class="btn btn-light">공포</button>
				<button type="button" class="btn btn-light">멀티플레이</button>
				<button type="button" class="btn btn-light">카드</button>
			</div>

			<div class="enform">
				<form>
					<table style="margin: 10px">
						<tr>
							<td colspan="2"><input type="text"></td>
						</tr>
						<tr align="center" height="50px">
							<td>
								<button type="button" class="btn btn-primary">등록</button>
							</td>
							<td>
								<button type="button" class="btn btn-danger" id="add_close">취소</button>
							</td>
						</tr>
					</table>
				</form>
			</div>

			<div class="upform">
				<form>
					<table style="margin: 10px">
						<tr>
							<td colspan="2"><input type="text"></td>
						</tr>
						<tr align="center" height="50px">
							<td>
								<button type="button" class="btn btn-primary">수정</button>
							</td>
							<td>
								<button type="button" class="btn btn-danger" id="up_close">취소</button>
							</td>
						</tr>
					</table>
				</form>
			</div>



		</div>
		
	</div>

	<script type="text/javascript">
		$(function() {
			$("#add_category").click(function() {
				$(".enform").css("display", "block");
			});

			$("#add_close").click(function() {
				$(".enform").css("display", "");
				$(".enform input").val("");
			});

			$("#content button").click(function() {
				$(".upform").css("display", "block");
				$(".upform input").val(event.target.textContent);
			});

			$("#up_close").click(function() {
				$(".upform").css("display", "");
				$(".upform input").val("");
			});

		})
	</script>



</body>
</html>