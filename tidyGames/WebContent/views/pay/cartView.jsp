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
    #center{
        border: 1px solid blue;
        width: 1200px;
        margin: 20px 0px 0px 30px;
    }
    .container{
        border: 1px solid red;
    }
    .table tr{
       color:white;
        
        
    }
    .table table-striped input{
        border: none;
        background: none;
    }

    #line1{
        width:1200px;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
        margin-left: 50px;
    }

    #footer{
        border: 1px solid black;
        width: 1115px;
        margin: auto;
    }

    #area1{
        height: 200px;
        width: 1200px;
    }

    table.calculation2 {                    /*총 결제예정금액 테이블*/
        border: solid 1px #e0e0eb;;
        border-collapse: collapse;
        background-color: #0e332c;
        width: 100%;
        font-size: 10pt;
    }

    table.calculation2 th{
        border: solid 1px #0e332c;    /*총 결제예정금액 테이블 -제목*/
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
        color: white;
        padding: 5px 10px;
        font-size: 13px;
        cursor: pointer;
        border-radius: 5px;
    }
    .defalut{background-color:  #fff; border: solid 1px gray; color: black;}
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

        <div id="center">
          <div class="container">
                <h2 style="color:white">장바구니</h2>
                <br>         
                <table class="table table-striped">
                <thead>
                    <tr>
                    <th width="150px">  <input type ="checkbox" id="game" name = "game" value="select" checked > 전체선택 </th>
                    <th width="300px">게임사진</th>
                    <th>게임명</th>
                    <th>게임가격</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>
                        <input type ="checkbox" id="game" name = "game" value="select" checked> 
                    </td>
                    <td height="150px">게임사진</td>
                    <td>배틀그라운드</td>
                    <td>$40000</td>
                    </tr>

                    <tr>
                        <td>
                        <input type ="checkbox" id="game" name = "game" value="select" checked> 
                        </td>
                        <td height="150px">게임사진</td>
                        <td>배틀그라운드</td>
                        <td>$40000</td>
                    </tr>
                
                    
                </tbody>
                </table>
                <div id="line_1"></div><br>
                <button type="button" class="btn btn-secondary">선택삭제</button><br><br>
          </div>

          <div id="footer">
            <div id="line_1"></div>
            <div id="area1"></div>
            <div id="line1"></div>


          </div>

          <br><br>

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