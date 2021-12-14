<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.TidyGames.game.model.vo.Game"%>
<%
	ArrayList<Game> list = (ArrayList<Game>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer3{
        background:#0e332c;
        width:1500px;
        height:1000px;
        display: flex;
        margin: auto;
        margin-top: 70px;

    }

    .game-list{
        background: rgb(43, 65, 60);
        width:1000px;
        height:240px;
        margin-bottom: 50px;
        display:flex;
        border:1px solid red;
        
    }

    .game-list>div {
        box-sizing: border-box;
    }
    .game-title-img{
        box-sizing: border-box;
        width: 300px;
        height:205px;
        float: left;
        object-fit: cover;
    }
    .game-name,.star-rating{
        width:180px;
        color: white;
        font-weight: bold;
        flex: 1;
        padding-top: 45px;
    }

    .heart,.cart{
        width:100px;
        height: 50px;

    }
    .drop-group{
        width:300px;
        margin-top: 20px;
    }
    .drop-group>div{
        display:inline-block;
        width:200px;
        height: 120px;
        flex: 1;
    }
    .game-title-img img {
        box-sizing: border-box;
        width:100%;
        height: 100%;
    }
    
    
</style>
</head>
<body style="background-color: #0e332c;">
    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>

    <div class="outer3">

        

        <div class="drop-group">


            <div class="container">
                <div class="title">
                  <select name="sort" id="sort" class="form-control">
                    <option value="">-- 정렬순 선택 --</option>
                    <option value="">출시일순</option>
                    <option value="">높은가격순</option>
                    <option value="">낮은가격순</option>
                    <option value="">리뷰많은순</option>
                    <option value="">별점높은순</option>
                    <option value="">별점높은순</option>
                  </select>

                </div>
              </div>
    
              <br><br><br>
    
              <div class="container">
                <div class="title">
                  <select name="sort" id="sort" class="form-control">
                    <option value="">-- 정렬순 선택 --</option>
                    <option value="">출시일순</option>
                    <option value="">높은가격순</option>
                    <option value="">낮은가격순</option>
                    <option value="">리뷰많은순</option>
                    <option value="">별점높은순</option>
                  </select>

                </div>
              </div>
    
              <br><br><br>
    
              <div class="container">
                <div class="title">
                  <select name="sort" id="sort" class="form-control">
                    <option value="">-- 장르별 선택 --</option>
                    <option value="">출시일순</option>
                    <option value="">높은가격순</option>
                    <option value="">낮은가격순</option>
                    <option value="">리뷰많은순</option>
                    <option value="">별점높은순</option>
                  </select>

                </div>
              </div>
              
        </div>

        <div class="emp"></div>

        <div class="list-group">
			<% if(list.isEmpty()) { %>
			<!-- 키워드와 일치하는 게임이 없을 경우 -->
				<h3 align="center" style="color:white"> 일치하는 게임이 없습니다.</h3>
			<% }else {%>
			<!--  일치하는 게임이 있을 경우 -->
				<% for(Game g : list) { %>
            <div class="game-list">
                <div class="game-title-img">
                    <img src="<%=contextPath%>/<%=g.getGameImg()%>">
                </div>
                <div class="game-name" align="center">
                    <%=g.getKorName()%><br>
                    <%=g.getEngName()%>
                    <br><br>
                    <h4 style="color: lightgrey; font-size: 14px;">
                        출시일<br>
                    <%=g.getReleaseDate()%>
                    </h4>
                </div>
                <div class="star-rating" align="center">
                    <br>
                    ★★★★★
                    <br><br><br>
                    <a href="reviewListView.jsp" class="btn btn-sm btn-secondary">이 게임의 리뷰</a>
                </div>
                <div class="heart" align="center">
                    <br><br><br>
                    <button>♡</button>
                </div>
                <div class="cart" align="center">
                    <br><br><br>
                    <button>cart</button>
                </div>
            </div>
	           	<% } %>
	   		<% } %>
            <div class="game-list">
                <div class="game-title-img" >
                    <img src="">
                </div>
                <div class="game-name" align="center">
                    <br>
                    슬라임랜처<br>
                    Slime Rancher
                    <br><br>
                    출시일<br>
                    2016년 2월 27일
                </div>
                <div class="star-rating" align="center">
                    <br>
                    ★★★★★
                    <br><br><br>
                    <a href="reviewListView.jsp" class="btn btn-sm btn-secondary">이 게임의 리뷰</a>
                </div>
                <div class="heart" align="center">
                    <br><br><br>
                    <button>♡</button>
                </div>
                <div class="cart" align="center">
                    <br><br><br>
                    <a href=""><button>cart</button></a>
                </div>
            </div>
    
            <div class="game-list">
                <div class="game-title-img" >
                    <img src="">
                </div>
                <div class="game-name" align="center">
                    <br>
                    슬라임랜처<br>
                    Slime Rancher
                    <br><br>
                    <h4 style="color: lightgrey; font-size: 14px;">출시일<br>
                    2016년 2월 27일</h4>
                    
                </div>
                <div class="star-rating" align="center">
                    <br>
                    ★★★★★
                    <br><br><br>
                    <a href="reviewListView.jsp" class="btn btn-sm btn-secondary">이 게임의 리뷰</a>
                </div>
                <div class="heart" align="center">
                    <br><br><br>
                    <button>♡</button>
                </div>
                <div class="cart" align="center">
                    <br><br><br>
                    <button>cart</button>
                </div>
            </div>
    
            <div class="game-list">
                <div class="game-title-img" >
                    <img src="">
                </div>
                <div class="game-name" align="center">
                    <br>
                    슬라임랜처<br>
                    Slime Rancher
                    <br><br>
                    출시일<br>
                    2016년 2월 27일
                </div>
                <div class="star-rating" align="center">
                    <br>
                    ★★★★★
                    <br><br><br>
                    <a href="reviewListView.jsp" class="btn btn-sm btn-secondary">이 게임의 리뷰</a>
                </div>
                <div class="heart" align="center">
                    <br><br><br>
                    <button>♡</button>
                </div>
                <div class="cart" align="center">
                    <br><br><br>
                    <button>cart</button>
                </div>
            </div>

        </div>


        


    </div>

    


    


</body>
</html>