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
    /* 전체 div */
    .container{
        width: 1250px;
        
        border: 1px solid red;
        margin: auto;
    }

    #line1{
        width:1100px;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    
    }
    /* 테이블 제목단 */
    .table tr{
       color:white;
        
        
    }
    /* 테이블 제목 */
    thead{
        text-align: center;
    }

    /* 테이블 내용 */
    tbody{
       background-color:#0e1f1c;
       text-align: center;
   }
   .area{
        width: 1010px;
        height: 800px;
        margin : auto;
        border: 5px solid burlywood;
    }
   #left, #right{
      
    height: 800px;
       border: 3px solid blue;
       box-sizing:border-box;
       
        float: left;
   }

   #left{
       width: 500px;
   }

   #right{
       width: 500px;
   }

   #left-up, #left-down{
       width: 100%;
       border: 3px solid violet;
       box-sizing:border-box;
        float: left;
   }
   #left-up{
       height: 40%;
   }

    #left-down{
        height: 60%;
    }
    /* 할인적용 */
    .area1{
        background: rgb(227, 220, 210);
        width: 300px;
        height: 50px;
        margin: auto;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold; font-size: 18px;
        position:relative;
    }
    /* 전액사용 버튼 */
    .use_btn{
        border-radius: 3px;
        border: none;
        background: lightgray;
        font-weight: bold;
        font-size: 13px;
        width: 80px;
        height: 30px;
        position: absolute;
        left:310px;
        top: 10px

    }
 
    #left h3, #right h3{
        font-size: 18px;
        color: white;
        margin-left: 100px;
        font-weight: bold;
    }
    /* 결제수단 */
    .area2{
        background: rgb(227, 220, 210);
        width: 300px;
        height: 60px;
        margin: auto;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold; font-size: 18px;
    }
    /* 최종결제정보1 */
    .area3{
        background: rgb(227, 220, 210);
        width: 300px;
        height: 60px;
        margin: auto;
        margin-top: 10px;
        padding: 10px;
        font-weight: bold; font-size: 18px;
    }
    /* 최종결제금액2 */
    .area4{
        background: rgb(227, 220, 210);
        width: 300px;
        height: 60px;
        margin: auto;
        margin-top: 30px;
        padding: 10px;
        font-weight: bold; font-size: 18px;
    }
    /* 이용약관 */
    #check{
        color: white;
        margin-top: 30px;
    }

    .area5{
        width: 400px;
        border: 1px solid orange;
        margin-left: 80px;
        text-align: left;

        
    }

    .area6{
        border: 1px solid fuchsia;
        width: 230px;
        height: 50px;
        margin: auto;
    }

    .table-striped td>h4{
        font-size: 18px;
        margin-top: 30px;
    }
</style>
</head>
<body style="background:#0e332c;">
    <div id="outer">
        <%@ include file="../common/topbar.jsp"%>
        <%@ include file="../common/navibar.jsp"%>
    </div>


        <form action="" method="post">
            <div class="container">
                <span style="color:white; font-size: 25px; font-weight: bold;">구매/결제</span>
                <span style="color: grey; font-size: 18px;"> >결제완료</span>
                
                <br><br>
                <div id="line1"></div><br>  
                
                
                <table class="table table-striped">
                    <thead>
                        <tr>
                    
                            <th width="200px"></th>
                            <th width="300px">게임명</th>
                            <th>게임가격</th>
                            <th>할인가격</th>
                            <th>결제금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td height="120px" style="text-align: right;"><img src="<%=contextPath%>/resources/image/battlefield.JPG" Width="80px" height="100px" ></td>
                            <td ><h3 style=" margin-top: 30px;">battlefield</h3></td>
                            <td><h4>40000원</h4></td>
                            <td><h4>-10000원</h4></td>
                            <td><h4>30000원</h4></td>
                        </tr>

                        <tr>
                            <td height="120px" style="text-align: right;"><img src="<%=contextPath%>/resources/image/battlefield.JPG" Width="80px" height="100px" ></td>
                            <td ><h3 style=" margin-top: 30px;">battlefield</h3></td>
                            <td><h4>40000원</h4></td>
                            <td><h4>-10000원</h4></td>
                            <td><h4>30000원</h4></td>
                        </tr>

                        <tr>
                            <td colspan="5" style="text-align: right; height: 70px;"><h4>총 결제금액 : 60000원</h4></td>
                        </tr>
                    
                        
                    </tbody>
                </table>
                <br><br><br>
            </div>




                <div class="area">
                    <div id="left">
                        <div id="left-up">
                            <h3>할인적용</h3>
                            <div class="area1">&nbsp;TIDY POINT</div>
                            <div class="area1">
                                <span style="font-size: 15px; text-align: center; color: grey;">&nbsp; 보유 POINT</span>_______________
                                <span style="text-align: right;">0</span>&nbsp;POINT
                                <div><button class="use_btn">전액사용</button></div>
                            </div>
                            <div class="area1">
                                <span style="font-size: 15px; text-align: center; color: grey;">&nbsp; 사용할 POINT</span>_____________
                                <span style="text-align: right;">0</span>&nbsp;POINT
                            </div>
                        </div>


                        <div id="left-down">
                            <h3>결제수단</h3>
                            <div class="area2">
                                <input type ="radio" name="payment" value="credit">
                                <img src="<%=contextPath%>/resources/image/creditcard.png" width="50px" height="40px">
                                Credit Card
                            </div>
                            <div class="area2">
                                <input type="radio" name="payment" value="kakaopay">
                                <img src="<%=contextPath%>/resources/image/kakao.png" width="70px" height="40px">
                                KaokoPay
                            </div>
                            <div class="area2">
                                <input type="radio" name="payment" value="naverpay">&nbsp;
                                <img src="<%=contextPath%>/resources/image/naverpay.png" width="50px" height="30px">
                                &nbsp;&nbsp;NaverPay

                            </div>
                            <div class="area2">
                                <input type="radio" name="payment" value="toss">&nbsp;&nbsp;
                                <img src="<%=contextPath%>/resources/image/toss.png" width="50px" height="30px">
                                &nbsp;Toss
                            </div>
                        </div>

                    </div>

                    <div id="right">
                        <h3>최종결제정보</h3>
                        <div class="area3">
                            <span style="font-size: 15px; text-align: center; color: grey;">&nbsp; 상품금액</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="text-align: right;">0</span>&nbsp;원
                        </div>
                        <div class="area3" style="color:red;">
                            <span style="font-size: 15px; text-align: center; color: red;">&nbsp; 할인금액</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="text-align: right;">0</span>&nbsp;원

                        </div>
                        <div class="area3">
                            <span style="font-size: 15px; text-align: center; color: grey;">&nbsp; 사용 POINT</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="text-align: right;">0</span>&nbsp;POINT
                        </div>
                        <div class="area4">
                            <span style="font-size: 15px; text-align: center; color: grey;">&nbsp; 최종결제금액</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="text-align: right;">0</span>&nbsp;원
                        </div>
                        <div class="area4">
                            <span style="font-size: 15px; text-align: center; color: grey;">&nbsp; 적립 TIDY POINT(5%)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="text-align: right;">0</span>&nbsp;POINT

                        </div>
                        <br><br>

                        <div class="area5">
                            <p id="check">  <input type="checkbox" value="">&nbsp;구매하실 상품의 상품정보 및 가격을 확인하였으며, <br> 이에 동의합니다(전자상거래법 제 8조 제 2항)</p>
                            <p id="check">  <input type="checkbox" value="">&nbsp;상품 구매시 환불요청은 결제완료 후 2일간 가능하며, <br>포인트는 환불승인이되면 반환됩니다. </p>
                            <p id="check">  <input type="checkbox" value="">&nbsp;TIDY GAMES의 약관에 동의합니다. </p>
                        </div>


                        


                    </div>
                    <br><br><br>
                   


                </div>

                <div class="area6">
                    <a href="#" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> 결제하기</a>
                    <a href="#" class="btn btn btn-secondary"> 장바구니로</a>
                </div>
            </form>
                






























          </div>










          <br><br>
       
          






    
</body>
</html>