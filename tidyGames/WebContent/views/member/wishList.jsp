<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{
        box-sizing: border-box;
    }
    #outer{
        width:1500px;
        height: 1000px;
        margin:auto;
        border: 1px solid orange;
    }
    #outer>div{
        float:left;
    } 
    #line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    #intro{
        font-size: 30px;
        font-weight: 900;
        color :white;
        margin: 30px 80px 0px 50px;
    }
    .search-game {
        width: 1200px;
        height: 70px;
      
        margin-left: 60px;
    }
    .search-game div{
        display:inline;
    }
    .search-game form{
        display: inline;
    }
    #wishList-array{
        border-radius: 3px;
        border: 1px solid white;
        background: #0e332c;
        color: white;
        height: 30px;

    }

    
    #line1{
        width:1200px;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
        margin-left: 50px;
    }


    #dropdown-array{
        background: #0e332c;
        border: 1px solid white;
        height: 30px;
       
    }
 
    .dropdown-menu dropdown-item{
        background: #0e332c;
        border: none;
    }

   
    
    #allDelete_btn{
        margin-left: 50px;
        border-radius: 3px;
        background: gray;
        font-weight:bolder;
    }
    /* 게임 목록 조회 1개 감싸는 div */
    #center{
        width: 1000px;
        margin-left: 60px;
        margin-bottom: 50px;
    }
    /* 검정테두리 감싸는 div */
    .wrap{
        
        background: black;
        width: 950px;
        height: 200px;
        margin: auto;
        float: right;
    }


    .game_area1, .game_area2{
        border:1px solid blue;
        box-sizing:border-box;
        height: 100%;
        float: left;
    }

    .game_area1{
        width: 150px;
        border: 5px solid blue;
    }
    .game_area2{
        width: 800px;
        border: 5px solid blue;
    }

    .game_area3, .game_area4{
        width: 100%;
        border: 5px solid orange;
        
    }
    .game_area3{
        height: 30%;
    }
    .area3{
        border:4px solid greenyellow;
        box-sizing:border-box;
        height: 100%;
        float: left;
    }


    #name{
        width: 80%;
        font-size: large;
        text-align: center;
        color: white;
    }
    #x_btn{
        width: 20%;
       
    }
    #delete_btn{
        float: right;
        border-radius: 4px;
        border: none;
        background: grey;
        height: 25px;
        width: 25px;
    }
    .game_area4{
        height: 70%;
    }

    .game_area5, .game_area6{
        border:3px solid blueviolet;
        box-sizing:border-box;
        height: 100%;
        float: left;
    }

    .game_area5{
        width: 60%;
    }
    .game_area6{
        width: 40%;
        
    }    
    .area6{
        float: right;
    }

    #price{
        color: white;
        font-size: medium;
        font-weight: bold;
        margin: 10px 10px 0px 0px;
      
    }

    #cart_btn{
        margin: 20px 10px 0px 0px;
        height: 30px;
        border: none;
        border-radius: 3px;
        background: rgb(16, 92, 144);
        color:white;
    }
    .paging-area{
       width: 1000px;
       height: 200px;
       border: 1px solid red;
       margin-left: 70px;
    }
    .paging-area>button {
        border-radius: 5px;
        background: none;
        border: none;
        color: white;
        font-size: 20px;
       
        
    }
    .paging-area>button:hover {
        cursor:pointer;
        color:orange
    }

    #wishListbar{
        color:orange;
    }
</style>
</head>
<body>
    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    <div id="outer">
        <div id="line_1"></div>
        <div>
            <%@ include file="../common/memberSidebar.jsp" %>
        </div>
        <!-- 닉네임 불러와지게 -->
        <div id="intro"><h1>닉네임 님의 찜 목록</h1></div>
        <br><br><br><br><br>

            
        <div class="search-game" style="border: 1px solid orange;">
            
            <form action="" id="wishList-search">

                <div id="game_search">
                    <input type="text" name="keyword" style="border-radius: 3px; width: 800px; height:30px; background:#0e332c; border: 1px solid white;" placeholder="이름 또는 태그로 검색">
                </div>
                
                <div id="search_btn">
                    <button type="submit" id="icon_btn"><i class="fas fa-search"></i></button>
                </div>
            </form>

            <!-- 두가지 방법중 어느걸로?? -->
            <form action="">
                
                <select name ="wishList-array" id="wishList-array">
                    <option selected >정렬기준</option>
                    <option value="releaseDate" >출시날짜</option>
                    <option value="gameName">이름</option>
                    <option vlaue="eventGame">할인중</option>
                    <option value="priceAsc">가격순:오름차순</option>
                    <option value="priceDesc">가격순:내림차순</option>
        
                </select>

            </form>

        </div>
        <br>
       
        <div id="line1"></div>
        <br>
        <br><br>
        <button id="allDelete_btn">전체삭제</button>
        <br><br>


            <div id="center" style="border: 1px solid orange;">
                <div class="wrap">
                    <div class="game_area1">게임사진</div>
                    <div class="game_area2">

                        <div class="game_area3">
                            <div id="name" class="area3">게임명</div>
                            <div id="x_btn" class="area3"><button id="delete_btn">X</button></div>
                        </div>
                        
                        <div id="line2" style="border: 1px solid grey;"></div>
                        <div class="game_area4">

                            <div class="game_area5">게임내용</div>
                            
                            <div class="game_area6">
                                
                                <!-- 할인게임은 어떻게 표시할건지? -->
                                <div id="price" class="area6">20000원</div><br><br>
                                <button id="cart_btn" class="area6">+ 장바구니추가</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            

            <div id="center">
                <div class="wrap">
                    <div class="game_area1">게임사진</div>
                    <div class="game_area2">

                        <div class="game_area3">
                            <div id="name" class="area3">게임명</div>
                            <div id="x_btn" class="area3"><button id="delete_btn">X</button></div>
                        </div>
                        
                        <div id="line2" style="border: 1px solid grey;"></div>
                        <div class="game_area4">

                            <div class="game_area5">게임내용</div>
                            
                            <div class="game_area6">
                                
                                <!-- 할인게임은 어떻게 표시할건지? -->
                                <div id="price" class="area6">20000원</div><br><br>
                                <button id="cart_btn" class="area6">+ 장바구니추가</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
            <br><br><br>
          
    </div>



</body>
</html>