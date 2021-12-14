<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
     #outer{
        width:1500px;
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
    /* 닉네임 포인트내역 글 영역*/
    .area0{
        width: 1000px;
        height: 100px;
        border: 3px solid blue;
        font-weight: bold;
        color: white;
        margin-top: 50px;
        margin-left: 100px;
    }


    /* 주문내역 게임 1개 영역 */
    .area1{
        width: 500px;
        height: 350px;
        border: 1px solid violet;
        margin-left : 100px;
        display:inline-block;
        
    }
    
    .area2{
        width: 500px;
        height: 350px;
        border: 1px solid violet;
        float: right;
        margin-right: 50px;
       
    }

    .resonse{
        width: 500px;
        height: 280px;
        background: black;
    }

     /* 환불사유select */
     #why{
        border-radius: 3px;
        border: 1px solid white;
        background: rgb(227, 220, 210);
        color: black;
        height: 30px;
        width: 400px;
        text-align: center;
        margin-left: 50px;
        margin-top: 20px;
        font-weight: bold;
    }
    /* 추가글영역 */
    #add{
        width: 400px;
        height: 190px;
        margin-left: 50px;
        background: rgb(227, 220, 210);
        border-radius: 6px;
    }
    /* 추가글작성 */
    #addtext{
        width: 350px;
        height:120px;
        background: rgb(227, 220, 210);
        margin-left: 25px;
        resize: none;

    }

       /* 환불정보 */
       .area3{
        width: 1000px;
        height: 400px;
        border: 1px solid violet;
        margin-left: 100px;
    }

    /* 버튼 */
    .area4{
        width: 1000px;
        height: 100px;
        border: 1px solid violet;
        margin-left: 310px;
        text-align: center;

    }

    #refundList{
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
            <%@ include file="../common/adminSidebar.jsp" %>
        </div>

        <div class="area0">
            <span style="color: grey; font-size: 18px;"> 환불요청목록 </span>
            <span style="color:white; font-size: 25px; font-weight: bold;"> >환불처리</span>
            <div style="background: grey; width: 1000px; height: 2px;"></div>
        </div>
        <br><br><br>
        
    
        
            
            <div class="area1">
                <div>
                    
                        <table class="table table-borderless" style="color:white; border:1px solid grey; background:rgb(20, 20, 20)">
                            <thead>
                                <tr>
                                <th colspan="4" width="450px" style="font-size: 25px; font-weight: bold;">BattleGround</th>
                                
                                </tr>
        
                            
                            </thead>
                            <tbody >
                                <tr>
                                    <th colspan="5"><div style="width:400px; height: 2px; background: grey;"></div></th>
                                
                                </tr>

                                <tr>
                                    
                                    <td width="200px" height="160px" style="text-align: center;">

                                        <img src="<%=contextPath%>/resources/image/battlefield.JPG" width="120px" height="150px">
                                    </td> 
                                    <td width ="300" style="font-weight: bold;">
                                        <div><br></div>
                                        <div>결제금액 :  <span>10000</span></div><br>
                                        <div>주문날짜 : <span>2021-12-09</span></div><br>
                                        <div>결제금액 : <span>27500</span></div><br>
                                        

                                    </td>
                                    <td></td></tid>
                                
                                    <td width = "50px"></td>
                                </tr>
                        
                            </tbody>
                        </table>
                </div>

            </div>

            <div class="area2">
                <div class="resonse">
                    <form action="">
                
                        <select name ="why" id="why">
                            <option selected >환불사유</option>
                            <option value="releaseDate" >예상하던게임과다름</option>
                            <option value="gameName">게임플레이 및 기술적인문제</option>
                            <option vlaue="eventGame">실수로 구매함</option>
                            <option value="priceAsc">재미없음</option>
                            <option value="priceDesc">기타</option>
                
                        </select>
                        <br><br>
                        <div id="add">
                            
                            <div style="font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추가글</div>
                            <div style="width: 350px; height:2px; background: grey; margin:auto;"></div>
                            <textarea id="addtext" name="addtext"></textarea>

                        </div>
        
                    </form>
                    
                </div>

                
            </div>








            <div class="area3">
                <div class="container" style="color: white;">
                    <h2>환불정보</h2>
                
                    <table class="table"style="color: white;">
                      
                        <tr>
                          <th>주문금액</th>
                          <td>결제금액</td>
                          <th>61,000원</th>
                        </tr>
                      
                      <tbody>
                        <tr>
                          <td></td>
                          <td>할인금액</td>
                          <th style="color:red;">-35000원</th>
                        </tr>
                        <tr>
                            <td></td>
                          <td>사용한POINT</td>
                          <th style="color:red;">-3000POINT</th>
                         
                        </tr>
                        <tr>
                            <td></td>
                          <td>환불예정금액</td>
                          <th>27500원</th>
                         
                        </tr>
                        <tr>
                          <td>결제방법</td>
                          <td></td>
                          <th>KAKAOPAY</th>
                        </tr>
                      </tbody>
                    </table>
                  </div>

            </div>

            <div class="area4">
                <a href="#" class="btn btn-dark"><i class="fa fa-shopping-cart"></i>환불승인</a>
                <a href="#" class="btn btn-danger">환불불가</a>
            </div>







    </div>

</body>
</html>