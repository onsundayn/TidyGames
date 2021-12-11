<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#listco{color:orange;}
	.navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
    .bar{
       float:left;
       margin-left:5px;
    }
    .outer{
	    background-color: #0e332c;
	    color:white;
	    width:1000px;
	    height:900px;
	    margin:auto;
	    margin-top:50px;
	    margin-left:300px;
    }
    h2{font-weight:normal;}
	th{width:150px;}
	td{text-align:center;}
	#check{
	    width:50px;
	}
	table {text-align:center;}
	#table{color:white;}
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp" %>
	<div class="navi"><%@ include file="../common/navibar.jsp" %></div>
    <div class="bar"><%@ include file="../common/adminSidebar.jsp" %></div>

	<div class="outer">
	    <h2>게임사 목록 조회</h2>
	    <br>
	    <form action="">
	        <div align="right" style="width:950px">
	            <a href="" class="btn btn-sm btn-danger">삭제</a>
	        </div>
			<br>	
            <table align="center" class="table-bordered table-sm" id="table">
                <thead>
                    <!--체크박스 ; 관리자만 보이게-->
                    <th><input type="checkbox"></th>
                    <th width="100">아이디</th>
                    <th width="200">등록코드</th>
                    <th width="500">게임사</th>
                    <th width="100">제공게임목록</th>
                    <th width="100">등록일자</th>
                </thead>
                <tbody>
                    <!--게시물이 없을 경우-->
                    <tr>    
                        <td colspan="6">조회된 게시글이 없습니다.</td>
                    </tr>
                    <!--게시물 있을 경우-->
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a href="<%= contextPath %>/detail.co" class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>BoramGames</td>
                        <td>vkEnsKl</td>
                        <td>보람게임즈</td>
                        <td><a class="btn btn-sm btn-info">조회</a></td>
                        <td>2021-12-07</td>
                    </tr>
                </tbody>
            </table>
	
	    </form>
	
	    <br><br><br>
	
	    <div class="paging-area" align="center">
	
	        <button> &lt; </button>
	        <button>1</button>
	        <button>2</button>
	        <button>3</button>
	        <button>4</button>
	        <button>5</button>
	        <button>6</button>
	        <button>7</button>
	        <button>8</button>
	        <button>9</button>
	        <button>10</button>
	        <button> &gt; </button>
	
	    </div>
	    
	    <br><br>
	    
		<div class="search-area" align="center">
			<input type="text" style="width:500px; height:30px;" placeholder="게임사 검색">
		    <input type="submit" value="검색">		
		</div>

	</div>
</body>
</html>