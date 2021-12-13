<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    #go-review a{
        background:rgb(240, 156, 40);
        text-decoration: none;
        color:black;
        padding:5px;
        border-radius: 5px;
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
                    슬라임랜처 <br>
                    Slime Rancher
                </p>
            </div>
            
            <div  class="img11" id="big">
                <img src="<%=contextPath%>/resources/image/동영상캡쳐.PNG">
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
                    <img src="<%=contextPath%>/resources/image/header_alt_assets_3.jpg">
                </div>

                <div id="price">
                    <span>판매가 : 21000원</span>
                </div>
                <div id="content">
                    <span>슬라임랜처는 소개글 어쩌구저쩌구 </span>
                </div>
                <div id="release-date">
                    <p>
                        출시일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017-08-02 <br>
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
                <div id="heart">
                    <a href=""><img src="<%=contextPath%>/resources/image/heart.png" width="40px" height="40px"></a>
                </div>
                
                <div id="cart">
                    <a href=""><img src="<%=contextPath%>/resources/image/cart.png" width="50px" height="50px"></a>
                </div>
                <br>
                <div id="rating">
                    <img src="<%=contextPath%>/resources/image/rating (1).png" width="140px" height="80px">
                </div>
                <div id="go-review">
                    <a href="<%=contextPath%>/views/game/reviewListView.jsp">게임리뷰 보러가기</a>
                </div>
            </div>

        </div>


    </div>
    
    
    
	

</body>
</html>