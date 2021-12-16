<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.ArrayList, com.TidyGames.game.model.vo.*, com.TidyGames.member.model.vo.*"%>
    
    
<%
ArrayList<WishList> wish = (ArrayList<WishList>)request.getAttribute("wish");
Game g = (Game)session.getAttribute("g");
%>    
 
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
        width: 1000px;
        height: 70px;
      
        margin-left: 140px;
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


    
    #allDelete_btn{
        margin-left: 150px;
        border-radius: 3px;
        background: gray;
        font-weight:bolder;
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


    #price{
        color: white;
        font-size: medium;
        font-weight: bold;
        margin: 10px 10px 0px 0px;
      
    }

    #cart_btn{
        font-weight: bold;
        height: 30px;
        border: none;
        border-radius: 3px;
        background: rgb(16, 92, 144);
        color:white;
        font-size: 10px;
        margin-top: 100px;
        width: 80px;
    }
    .paging-area{
       width: 1000px;
       height: 200px;
       
       margin-left: 150px;
       margin-top: 50px;
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
	    table.shoping-cart-table tr td.desc,
	table.shoping-cart-table tr td:first-child {
	  text-align: left;
	}
	    table.shoping-cart-table {
	  margin-bottom: 0;
	}
	table.shoping-cart-table tr td {
	  border: none;
	  text-align: right;
	}
	table.shoping-cart-table tr td.desc,
	table.shoping-cart-table tr td:first-child {
	  text-align: left;
	}
	table.shoping-cart-table tr td:last-child {
	  width: 80px;
	}
	.ibox.collapsed .ibox-content {
	  display: none;
	}
	.ibox-content {
	  background-color: #ffffff;
	  color: inherit;
	  padding: 15px 20px 20px 20px;
	  border-color: #e7eaec;
	  border-image: none;
	  border-style: solid solid none;
	  border-width: 1px 0;
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

            
        <div class="search-game">
            
            <form action="" id="wishList-search">

                <div id="game_search">
                    <input type="text" name="keyword" style="border-radius: 3px; width: 800px; height:30px; background:#0e332c; border: 1px solid white;" placeholder="이름 또는 태그로 검색">
                </div>
                
                <div id="search_btn">
                    <button type="submit" id="icon_btn"><i class="fas fa-search"></i></button>
                </div>
            </form>

           
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
        
        <button id="allDelete_btn" onclick="fnClear();">전체삭제</button>
        	 <script>
	        	 function fnClear() {
			    		var check = confirm("찜목록을 비우시겠습니까?");
			    		if(check) {
			    		location.href = "<%=contextPath %>/cartClear.pa";
			    		}
			    	}
        	</script>
        
       
       
      
       
      
        <br><br>
		   <%for(WishList w : wish){ %>
        <div class="ibox-content" style="background: rgba(0, 0, 0, 0.445);  width: 1000px; height: 240px; margin-left: 150px;">
             <div class="table-responsive" >  
                        <table class="table shoping-cart-table" >
                            <tbody>
                                    <tr>
                                        <td width="150">
                                            <div >
                       							<img src="<%=contextPath%>/<%=w.getGameImg()%>" width="200px" height="150px">
                                            </div>
                                        </td>

                                    
                                        <td class="desc" width="330">
                                            <h3>
                                            <a href="#" class="text-navy" style="font-size:18px">
                                                   <%=w.getKorName() %> <br>
                   									<%=w.getEngName() %>
                  			                 </a>
                                                       
                                            </h3>
                                            <p class="small" style="color:white;">
                                            <%=w.getGameIntro() %>
                                            </p>
                        

                                            <div class="m-t-sm"></div>
                                                <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                            </div>
                                        </td>

                                        <!-- 할인가격이면 이렇게 표시 -->
                                        <td style="color:white" width="100"> 
                                            <span> <%=w.getPrice()%>원</span>
                                            <s class="small text-muted"> <span>1000000원</span></s>
                                        </td>
                                        
                                        <td width="50">
                                            <input type="text" class="form-control" placeholder="1" style="background: none;">
                                        </td>
                                        
                                        <td width="200">
                                            <h4 style="color:white; font-size:19px" >
                                            
                                                <span> <span> <%=w.getPrice()%>원</span></span>
                                                <button id="cart_btn" style="font-size: 15px;">+ Cart</button>
                                            </h4>
                                        </td>
                                        
                                    </tr>
                            </tbody>
                        </table>
            
            
                    </div>
                </div>
        
            <% } %>
		
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