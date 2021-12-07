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

    #line1{
        width:1200px;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
        margin-left: 50px;
    }

    .cart{                              /*계산테이블 영역*/
        border : 1px solid red;
        width: 1200px;
        margin-left: 50px;
        margin-top: 30px;
       
    }


    table.calculation1{         /*계산테이블*/
        clear:both;
        border: solid 1px grey;
        border-collapse: collapse;
        background-color: black;
        font-size:10pt;
    }
    table.calculation1 th{      /*계산테이블 -제목*/
       
        padding: 10px 0;
        color:white;
        text-align: center;
    }
    table.calculation td span{      /*계산 테이블-내용*/
        border: solid 1px grey;
        text-align: center;
        color: white;
    }



    table.calculation2 {                    /*총 결제예정금액 테이블*/
        border: solid 1px #e0e0eb;;
        border-collapse: collapse;
        background-color: #f5f5f0;
        width: 100%;
        font-size: 10pt;
    }

    table.calculation2 th{
        border: solid 1px #e0e0eb;      /*총 결제예정금액 테이블 -제목*/
        text-align: center;

    }
    table.calculation2 td{
        border: solid 1px #e0e0eb;   /*총 결제예정금액 테이블 - 내용*/
        text-align: center;
    }

    .price{
        font-size: 20pt;
        font-weight: bold;              /*가격 ~원*/
    }

    .btn{
        border: none;
        color: blue;
        padding: 5px 10px;
        font-size: 13px;
        cursor: pointer;
        border-radius: 5px;
    }
    .defalut{background-color:  blue; border: solid 1px blue; color: black;}
    .defalut:hover{background: #ddd;}
    .backBtn{background: #fff; border: solid 1px gray;}
    
    



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
            <br><br>
            <div><span style="font-size: 17pt; font-weight:bold; color: white; margin-left: 50px;">장바구니</span></div><br><br>
            <div id="line1"></div>
            <div class="cart">
                <table class="calculation1">
                    <thead>
                        <tr>
                            <th colspan="7" style="text-align:left; padding-left:10px">주문내역</th></th>

                        </tr>
                        
                        <tr>
                            <th width="100px" align="center"><input type="checkbox" name="checkbox" id="check"></th>
                            <th width="200px"><span>이미지</span></th>
                            <th width= "350px;"><span>게임명</span></th>
                            <th width="100px">가격</th>
                            <th width="100px">할인금액</th>
                            <th width="100px">합계</th>
                            <th width="230px">선택</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr style="height: 90px; background-color: white;">
                            <td  width=100px; style="text-align: left; text-align: center; border-right:none;">
                                <input type="checkbox" name="checkbox">
                            </td>
                            
                            <td width="200px" style="border-left: none; border-right: none;">
                                <img style="width: 80%;" src="">
                            </td>

                            <td width= "350px;" style="text-align: left; padding-left:10px; border-left: none; font-weight: bold;">게임명</td>
                            <td width="100px"><span style="padding-left:10px">0</span>원</td>
                            <td width="100px"><span style="padding-left:10px">0</span>원</td>
                            <td width="100px"><span style="padding-left:10px">0</span>원</td>
                            <td width="230px">
                                <button class="btn defalut" style="border-radius: 3px; width: 90px; margin-bottom: 3px; font-size: 10px;">주문하기</button>
                                <button class="btn defalut" style="border-radius: 3px; width: 90px; margin-bottom: 3px; font-size: 10px;">관심상품등록</button>

                            </td>

                            <tfoot>
                                <tr style="height: 60px;">
                                    <td colspan="7" style="border-left:none; text-align:right; padding-right:10px; color:white;">
                                        상품금액<span>0</span> - 할인금액<span>0</span> = 합계 &nbsp;<span style="font-style: bold; font-size: 15pt;">0</span>원
                                    </td>

                                </tr>

                            </tfoot>

                            
                        </tr>

                    </tbody>


                </table>

            </div>




          <table class="calculation2">
            <tr>
                <th> 총 상품금액</th>
                <th> 할인금액</th>
                <th style="width: 750px; padding: 22px 0;">결제예정금액</th>
            </tr>

            <tr style="background-color: #fff;">
                <td style="padding: 22px 0;"><span class="price">0</span>원</td>
                <td>+<span class="price">0</span>원</td>
                <td>=<span class="price">0</span>원</td>
            </tr>

          </table>

          <br><br>
          <div align="center">
            <button class="btn de-fault" id="allProduct">전체상품주문</button>
            <button class="btn de-fault backBtn">선택상품주문</button>>
            <button class="btn de-fault footerbtn" id="footerbtn">쇼풍계속하기</button>
            <span class="clearboth"></span>

          </div>









        </div>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    </div>

</body>
</html>