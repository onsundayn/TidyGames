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
        border: 1px solid red;

    }

    .game-list{
        width:1000px;
        height:190px;
        border: 1px solid red;
        margin-top: 20px;
        margin-bottom: 30px ;
        float: right;
        flex: 2;
        display:flex;

    }

    .game-list>div{
        display:inline-block;
        box-sizing: border-box;
    }
    .game-title-img{
        width: 300px;
        height:190px;
        box-sizing: border-box;
        flex:1;
        
    }
    .game-name,.star-rating{
        width:180px;
        color: white;
        font-weight: bold;
        flex: 1;
        border: 1px solid red;
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
        border: 1px solid red;
        width:200px;
        height: 120px;
        flex: 1;
    }

    .game-list img{
        width: 300px;
        height:190px;
        object-fit: cover;
        box-sizing: border-box;
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

            <div class="game-list">
                <div class="game-title-img">
                    <img src="<%=contextPath%>/resources/image/Dead-Cells.jpg">
                </div>
                <div class="game-name" align="center">
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