<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.TidyGames.game.model.vo.*"%>
<%
	Game g = (Game)request.getAttribute("g");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        width: 1200px;
        height:800px;
        display:flex;
        margin: auto;
        margin-top: 70px;
    }
    .title{
        color: white;
        font-size:25px;
    }
    .left-area{
        height: 700px;
        width: 700px;
    }
    #big{
        width:700px;
        height:300px;
    }
    .img11 img{
        width:100%;
        height: 100%;
        object-fit: cover;
    }
    #small{
        background: darkgrey;
        width:700px;
        height:120px;
    }
    #small img{
        width:140px;
        height:90px;
        margin:15px;
    }
    .right-area{
        width:500px;
        height:700px;
        margin-top: 91px;
    }
    #t-img{
        width:450px;
        height:200px;
        margin: auto;
    }
    .right-area div{
        color: white;
        margin-left: 15px;
    }
    #price{
        width: 200px;
        height:40px;
        margin-top: 30px;
    }
    #content{
        width:450px;
        height:110px;
    }
    .category-btn{
        background: rgb(102, 107, 112);
        text-decoration: none;
        font-size: 12px;
        color:white;
        padding: 5px;
        margin: 5px;
        border-radius: 5px;
    }
    .btn-area div{
        display:inline-block;
    }
    #heart{
        margin:30px 120px 10px 100px;
    }
    #rating{
        margin-left: 50px;
        margin-right: 30px;
    }
    #review-btn{
        background:lightgrey;
        text-decoration: none;
        color:black;
        padding:5px;
        border-radius: 5px;
    }
    #cart a, #heart a, #rating a{
        text-decoration:none;
        color:lightgrey;
    }
    #cart a:hover, #heart a:hover, #rating a:hover{
        text-decoration: none;
        color:orange;
    }
    #review-btn:hover{
    	background-color:orange;
    }
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>

    <div class="outer">
        <div class="left-area">
            <div class="title">
                <p>
                    <%=g.getKorName() %> <br>
                    <%=g.getEngName() %>
                </p>
            </div>
            
            <div  class="img11" id="big">
                <img src="<%=contextPath%>/<%=g.getGameImg()%>">
            </div>
            
            <div class="img11" id="small" align="center">
                <img src="">
                <img src="">
                <img src="">
                <img src="">
            </div>

            <div id="btn" align="center">
                <button>&lt;</button>
                <button></button>
                <button></button>
                <button></button>
                <button>&gt;</button>
            </div>
            
        </div>

        <div class="right-area">
            <div class="info-area">
                <div id="t-img">
                    <img src="<%=contextPath%>/<%=g.getGameImg()%>">
                </div>

                <div id="price">
                    <span>판매가 : <%=g.getPrice() %>원</span>
                </div>
                <div id="content">
                    <span><%=g.getGameIntro() %> </span>
                </div>
                <div id="release-date">
                    <p>
                        출시일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=g.getReleaseDate() %> <br>
                        장르 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 액션게임<br>
                        플레이어 &nbsp;&nbsp;&nbsp; 싱글플레이어<br>
                    </p>
                </div>
                <div id="tag">
                    관련태그&nbsp;&nbsp;&nbsp; 
                            <a href="gameList.jsp" class="category-btn">싱글플레이어</a>
                            <a href="" class="category-btn">어드벤처</a>
                            <a href="" class="category-btn">탐험</a>
                </div>
            </div>
            <div class="btn-area">
            <% if(loginUser == null) { %>
                <div id="heart">
                    <a href=""><i class="far fa-heart fa-2x"></i></a>
                </div>
                <div id="cart">
                    <a href="<%=contextPath%>/login.me" onclick="return loginMsg();"><i class="fas fa-shopping-cart fa-2x"></i></a>
                </div>
             <% } else { %>
             	<div id="heart">
                    <a href=""><i class="far fa-heart fa-2x"></i></a>
                </div>
                <div id="cart">
                    <a href="<%=contextPath%>/cart.pa" onclick="return cartConfirm();"><i class="fas fa-shopping-cart fa-2x"></i></a>
             	</div>
             <% } %>		
                <br>
                <br><br>
                <div id="rating">
                   <a href="">
                    	<!-- 별점 띄워줄때 반복문 돌려볼까?-->
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    </a>
                </div>
                <div id="go-review">
                    <a href="<%=contextPath%>/reviewList.ga?gno=<%=g.getGameNo()%>" id="review-btn">게임리뷰 보러가기</a>
                </div>
            </div>

        </div>
    </div>
    
    <script>
    
    function loginMsg(){
    	if(!confirm("로그인이 필요합니다. 로그인하시겠습니까?")){
    		return false; 
    	}
    }
    
    function cartConfirm(){
    	if(!confirm("장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?")){
    		return false;
    	}
    }
    
	    
    </script>
    
    
    
    
    
	

</body>
</html>