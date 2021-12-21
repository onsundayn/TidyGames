<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.ArrayList, com.TidyGames.pay.model.vo.*"%>
    
 <%
 ArrayList<PayGame> order = (ArrayList<PayGame>)request.getAttribute("order");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    /* 전체div */
    #outer{
        width:1500px;
        height: 1000px;
        margin:auto;
    }
    #outer>div{
        float:left;
    } 
    #line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    /* 닉네임의주문내역 */
    .area1{
       border: 1px solid red;
       font-size: 30px;
        font-weight: 900;
        color :white;
        margin: 30px 80px 0px 50px;
    }
    /* 검색영역 */
    .area2{
        border: 1px solid blue;
        width: 1000px;
        height:150px;
        margin-left: 100px;
      
        
        
    }
    /* 검색바 */
    .searchname div{
        display:inline;
       
    }   
    #searchtext{
       border-radius: 3px;
       width: 600px; 
        height:40px;
        border: 1px solid white;
        margin-left: 150px;
        margin-top: 30px;
   
    }
    /* select */
    .searchbar{
        margin-top : 60px;
        margin-left: 100px;
      
    }
   


    .dateSearch .searchname{
        display: inline;
        margin-top: 30px;
    }
    /* 주문내역 게임 1개 영역 */
    .area3{
        width: 1200px;
        height: 280px;
        border: 1px solid violet;
        
        margin-top: 30px;
    }

    .paging-area{
        border: 1px solid red;
        width: 1000px;
        height: 50px;
        margin-top: 40px;
        margin-right: 150px;
        text-align: center;
        float: right;
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
    #orderbar{
        color:orange;
    }

     /* 달력 div */
     .datetable{
        display: inline-block;
    }
    .datetable>input{
        border-radius: 5px;
        font-weight: bold;
    }

    /* 달력 정렬 조회 영역 */
    .area4{
        width: 700px;
        float: right;
      
        height: 50px;
        border: 1px solid red;
       
        margin: 30px 150px 30px 0px;
    }

    /* 주문영역 */
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


    .butt{
        width: 100px;
        height: 40px;
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
        <div class="area1"><span>닉네임</span>님의 주문내역</div>
        <br><br><br><br><br>
        



            <div class="area2">
                <div class="dateSearch">
                   
                  
                    
                    
                    <div class="searchname" >
                        <div id="game_search">
                            <input type="text" id="searchtext" name="keyword"  placeholder="게임명을 입력해주세요">
                        </div>
                        
                        <div id="search_btn">
                            <button type="submit" id="icon_btn"><i class="fas fa-search"></i></button>
                           
                        </div>
                
                    </div>
                </div>
                <div class="area4">
                    <div class="datetable">
                        <input type="date" name="startDate" class="date">
                        <span style="color:black">&nbsp;&nbsp; ~ &nbsp;&nbsp;</span>
                        <input type="date" name="endDate" class="date">
                    </div>
                            
                    <select class="btn btn-outline-secondary" style="color: white; margin: 0px 50px 0px 50px; height: 30px; font-size: 13px;">
                        <option selected value="uptodate">최신순</option>
                        <option value="olddae" >오래된순</option>
    
                    </select>
    
                    <button type="submit" class="btn btn-sm btn-secondary" style="width: 50px; height: 35px;">조회</button>   
                 </div>

             </div>
             <div id="line1" style="width: 1150px; height: 2px; background: rgba(255, 255, 255, 0.555); margin-left: 50px;"></div>
                <br><br><br><br>

          






			 <%for(PayGame p : order){ %>
             <div class="area3" style="float: right;">
                <div class="ibox-content" style="background: rgba(0, 0, 0, 0.445);  width: 1000px; height: 280px; margin-right: 150px; float: right;">
                    <div class="table-responsive" >  
                               <table class="table shoping-cart-table" >
                                   <tbody>
                                   
                                           <tr>
                                               <td width="200">
                                                   <div >
                                                            <img src="<%=contextPath%>/<%=p.getGameImg()%>" width="220px" height="180px" style="margin-top: 20px; margin-left: 20px;">
                                                   </div>
                                               </td>
       
                                           
                                               <td class="desc" width="400">
                                                   <h3>
                                                   <a href="#" class="text-navy" style="font-size:18px;">
                                                        <%=p.getKorName() %> <br>
                   										<%=p.getEngName() %>
                                                      </a>
                                                              
                                                   </h3><br>
                                                   
                                                   <div style="font-size: 14px;">
                                                   <p style="color:white;">
                                                    	주문번호 :  <%=p.getOrderNo() %>
                                                   </p>
                                                   <p  style="color:white;">
                                                   		주문날짜 : <%=p.getPayDate() %>
                                                   </p>
                                                   <p  style="color:white;">
                                                    	결제방법 : <%=p.getPayMethod() %>
                                                    </p>
                                                   <p style="color:white;">
                                                    	<%=p.getPayStatus() %>
                                                    </p>
                                                </div>
                                               </td>
       
                                            
                                               <td width="200">
                                                   <h4 style="color:white; font-size:19px" >
                                                   
                                                      	  총결제금액<br><br><span style="margin-right: 20px;"> <%=p.getPayAmount() %></span>원
                                                       
                                                       
                                                        <div style="margin-top: 100px;"><a href="<%=contextPath%>/refund.pa?ono=<%=p.getOrderNo()%>" class="btn btn-primary butt" >환불요청</a></div> <br>
                                                    	
                                                        
                                                   </h4>
                                               </td>
                                               
                                           </tr>
                                   </tbody>
                               </table>
                   
                   
                           </div>
                       </div>
             </div>

				<%} %>

                <br><br>
             <div class="paging-area" style="float: right;">
	
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

             </div>



        
        
    </div>

    







    
        
</body>
</html>