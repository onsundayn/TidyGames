<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer3{
        background:#0e332c;
        width:1500px;
        height:800px;
        display: flex;
        margin: auto;
    }

    .game-list{
        width:800px;
        height:170px;
        border: 1px solid red;
        margin-top: 20px;
        margin-bottom: 30px ;
        float: right;
        flex: 3;

    }

    .game-list>div{
        display:table-cell;
    }
    .game-title-img{
        width: 280px;
        height:170px;
        box-sizing: border-box;
    }
    .game-name,.star-rating{
        width:180px;
        color: white;
        font-weight: bold;
    }
    .heart,.cart{
        width:100px;
        height: 50px;

    }
    .drop-group>div{
        display:inline-block;
        border: 1px solid red;
        width:200px;
        height: 250px;
        flex: 1;
    }

    .emp{
        width:250px;
        height: 800px;
    }
    
</style>
</head>
<body style="background-color: #0e332c;">
    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>

    <div class="outer3">

        

        <div class="drop-group">


            <div class="container">
                <div class="dropdown">
                  <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown">
                    정렬순 선택
                  </button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="gameList.jsp">출시일순</a>
                    <a class="dropdown-item" href="#">높은가격순</a>
                    <a class="dropdown-item" href="#">낮은가격순</a>
                    <a class="dropdown-item" href="#">리뷰많은순</a>
                    <a class="dropdown-item" href="#">별점높은순</a>
                  </div>
                </div>
              </div>
    
              <br><br><br>
    
              <div class="container">
                <div class="dropdown">
                  <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown">
                    정렬순 선택
                  </button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="gameList.jsp">출시일순</a>
                    <a class="dropdown-item" href="#">높은가격순</a>
                    <a class="dropdown-item" href="#">낮은가격순</a>
                    <a class="dropdown-item" href="#">리뷰많은순</a>
                    <a class="dropdown-item" href="#">별점높은순</a>
                  </div>
                </div>
              </div>
    
              <br><br><br>
    
              <div class="container">
                <div class="dropdown">
                  <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown">
                    정렬순 선택
                  </button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="gameList.jsp">출시일순</a>
                    <a class="dropdown-item" href="#">높은가격순</a>
                    <a class="dropdown-item" href="#">낮은가격순</a>
                    <a class="dropdown-item" href="#">리뷰많은순</a>
                    <a class="dropdown-item" href="#">별점높은순</a>
                  </div>
                </div>
              </div>
        </div>

        <div class="emp"></div>

        <div class="list-group">

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
                    <button>이 게임의 리뷰</button>
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
                    <button>이 게임의 리뷰</button>
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
                    <button>이 게임의 리뷰</button>
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
                    <button>이 게임의 리뷰</button>
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