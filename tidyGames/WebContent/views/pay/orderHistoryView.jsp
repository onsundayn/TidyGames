<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        width: 1200px;
        height:80px;
        margin-left: 70px;
        
        
        
    }
    /* 검색바 */
    .searchname div{
        display:inline;
        
    }
    /* select */
    .searchbar{
        margin-top : 60px;
        margin-left: 100px;
    }

    .dateSearch .searchname{
        display: inline;
    }
    /* 주문내역 게임 1개 영역 */
    .area3{
        width: 1200px;
        height: 350px;
        border: 1px solid violet;
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
    #orderbar{
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
        <div class="area1"><span>닉네임</span>님의 주문내역</div>
        <br><br><br><br><br>
        



            <div class="area2">
                <div class="dateSearch">
                   
                    <select class="btn btn-outline-secondary" style="color: white;">
                        <option selected >조회기간</option>
                        <option value="weekend" >일주일</option>
                        <option value="month">한달</option>
                        <option vlaue="threemonth">3개월</option>
                        <option value="sixmonth">6개월</option>
                        <option value="year">1년</option>
            
                    </select>
                    &nbsp; &nbsp;
                    <select class="btn btn-outline-secondary" style="color: white;">
                        <option selected value="uptodate">최신순</option>
                        <option value="olddae" >오래된순</option>

                    </select>
                    
                    &nbsp; &nbsp; &nbsp; &nbsp;
                    <div class="searchname">
                        <div id="game_search">
                            <input type="text" name="keyword" style="border-radius: 3px; width: 800px; height:40px; border: 1px solid white;" placeholder="게임명을 입력해주세요">
                        </div>
                        
                        <div id="search_btn">
                            <button type="submit" id="icon_btn"><i class="fas fa-search"></i></button>
                        </div>
                
                    </div>
                </div>


             </div>
             <div id="line1" style="width: 1150px; height: 2px; background: rgba(255, 255, 255, 0.555); margin-left: 50px;"></div>
                <br><br><br><br>

             <div class="area3">
                <div class="container" style="color:white;">
                    <h4 style="font-size: 15px; font-weight: bold;">&nbsp;&nbsp;주문날짜 2021-12-09</h4>
                    <table class="table table-borderless" style="color:white; border:1px solid grey; background:rgba(20, 20, 20, 0.87)">
                      <thead>
                        <tr>
                          <th colspan="5" style="font-size: 25px; font-weight: bold;">BattleGround</th>
                        
                        </tr>
 
                    
                      </thead>
                      <tbody >
                        <tr>
                            <th colspan="5"><div style="width:1100px; height: 2px; background: grey;"></div></th>
                           
                        </tr>
                        <tr>
                            
                            <td colspan="2" rowspan="2" width="200px" height="200px" style="text-align: center;">
                                <img src="<%=contextPath%>/resources/image/battlefield.JPG" width="150px" height="200px">

                            </td> <!-- 1,2열 합쳐서 한 열로, 1,2행 하나로 합쳐서 한행으로-->
                            <td width ="700" height="40px">
                             
                            </td>
                           
                            <td width = "200px"> 
                                
                            </td>
                        </tr>

                        <tr>
                            <td style="font-weight: bold;">   
                                <div>주문번호 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="">100000</a></div><br>
                                <div>결제금액 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span>100000</span></div><br>
                                <div>결제완료 or 환불중</div>
                            </td>
                           
                            <td>
                                <div><a href="<%= request.getContextPath() %>/refund.pa" class="btn btn-primary">환불요청</a></div> <br>
                                <div><a href="<%= request.getContextPath() %>/orderDetail.pa" class="btn btn-secondary">상세보기</a></div>
                            </td>
                        </tr>
                      

                    
                      </tbody>
                    </table>
                </div>

             </div>







             <div class="area3">
                <div class="container" style="color:white;">
                    <h4 style="font-size: 15px; font-weight: bold;">&nbsp;&nbsp;주문날짜 2021-12-09</h4>
                    <table class="table table-borderless" style="color:white; border:1px solid grey; background:rgba(20, 20, 20, 0.87);">
                      <thead>
                        <tr>
                          <th colspan="5" style="font-size: 25px; font-weight: bold;">BattleGround</th>
                        
                        </tr>
 
                    
                      </thead>
                      <tbody >
                        <tr>
                            <th colspan="5"><div style="width:1100px; height: 2px; background: grey;"></div></th>
                           
                        </tr>

                        <tr>
                            
                            <td colspan="2" rowspan="2" width="200px" height="200px" style="text-align: center;">
                                <img src="<%=contextPath%>/resources/image/battlefield.JPG" width="150px" height="200px">

                            </td> <!-- 1,2열 합쳐서 한 열로, 1,2행 하나로 합쳐서 한행으로-->
                            <td width ="700" height="40px">
                             
                            </td>
                           
                            <td width = "200px"> 
                                
                            </td>
                        </tr>

                        <tr>
                            <td style="font-weight: bold;">   
                                <div>주문번호 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="">100000</a></div><br>
                                <div>결제금액 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span>100000</span></div><br>
                                <div>결제완료 or 환불중</div>
                            </td>
                           
                            <td>
                                <div><button class="btn btn-primary">환불요청</button></div> <br>
                                <div><button class="btn btn-secondary">상세보기</button></div>
                            </td>
                        </tr>
                      

                    
                      </tbody>
                    </table>
                </div>

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

             </div>



        
        
    </div>

    







    
        
</body>
</html>