<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#community{color:orange;}
	.navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
	.outer{
		background-color: #0e332c;
		color:white;
		width:1200px;
		height:1000px;
		margin:auto;
		margin-top:50px;
	}
	table {text-align:center;}
	#table{color:white;}
	tbody>tr:hover{
    	background:lightgrey;
    	color:black;
    	cursor:pointer;
    }
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp" %>
	<div class="navi"><%@ include file="../common/navibar.jsp" %></div>
    
    <div class="outer">

        <h2>TIDY COMMUNITY  <i class="far fa-comments"></i></h2>
        <br><br>
        <form action="">

            <div id="deletebtn" align="right" style="width:1200px;">
                <!--관리자계정에서만보이는 버튼-->
                <a href="" class="btn btn-danger">삭제</a>
                <!-- 로그인 시에만 보이는 버튼 -->
                <a href="<%= contextPath %>/enrollForm.po" class="btn btn-secondary">글작성</a>
            </div>

            <br>

            <table align="center" style="font-size: 12pt" class="table" id="table">
                <thead>
                    <!--체크박스 ; 관리자만 보이게-->
                    <th><input type="checkbox"></th>
                    <th width="100">글번호</th>
                    <th width="200">작성자</th>
                    <th width="500">제목</th>
                    <th width="100">조회수</th>
                    <th width="100">추천수</th>
                    <th width="150">작성일</th>
                </thead>
                <tbody>
                    <!--게시물이 없을 경우-->
                    <tr>    
                        <td colspan="7">조회된 게시글이 없습니다.</td>
                    </tr>
                    <!--게시물 있을 경우-->
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>15</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>1</td>
                        <td>0</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>12423534</td>
                        <td>라랄라라라</td>
                        <td>제목 제목 이것은 제목입니다</td>
                        <td>235239432</td>
                        <td>12849102</td>
                        <td>2021-12-05</td>
                    </tr>
                </tbody>
            </table>

            <br><br>

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

                <select name="" id="" style="height:30px;">
                    <option value="">조회순</option>
                    <option value="">추천순</option>
                    <option value="">닉네임</option>
                </select>
                <input type="text" style="width:500px; height:30px;">
                <input type="submit" value="검색">


            </div>

        </form>

    </div>

</body>
</html>