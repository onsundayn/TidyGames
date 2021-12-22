<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* 화면전체 div */
       #outer{
        width:1500px;
        height: 1500px;
        margin:auto;
        border: 2px solid orange;
    }


    #line1{
        width:1200px;
        height:3px;
        background: white
    
    }

    #text{
        width: 1200px;
        height: 100px;
        margin: auto;
    }

    /* 주문내역 게임 1개 영역 */
    .area1{
        width: 590px;
        height: 350px;
        border: 1px solid violet;
        margin-left : 150px;
        display:inline-block;
    }
    /* 테이블영역 */

/* 테이블 제목단 */
.table tr {
	color: white;
}
/* 테이블 제목 */
thead {
	text-align: center;
}

/* 테이블 내용 */
tbody>tr>td {
	background-color: #0e1f1c;
	font-size: 18px;
    text-align: center;
   
}
    .area2{
        width: 590px;
        height: 350px;
        border: 1px solid violet;
        float: right;
        margin-right: 150px;
       
    }
    /*  */
    .resonse{
        width: 590px;
        height: 280px;
        background: rgba(0, 0, 0, 0.445);
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
        margin-left: 100px;
        margin-top: 20px;
        font-weight: bold;
    }
    /* 추가글영역 */
    #add{
        width: 400px;
        height: 190px;
        margin-left: 100px;
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
        width: 1200px;
        height: 400px;
        border: 1px solid violet;
        margin: auto;
    }

    /* 버튼 */
    .area4{
        width: 1200px;
        height: 100px;
        border: 1px solid violet;
        margin: auto;
        text-align: center;
    }
</style>
</head>
<body>
    <body style="background:#0e332c;">
        <div id="outer">
            <%@ include file="../common/topbar.jsp"%>
            <%@ include file="../common/navibar.jsp"%>

            <div id="text">
            <h2 style="color:white; font-weight: bold;">환불요청</h2>
            <div id="line1"></div>
            </div>

            <form action="" method="post">
            
            <div class="area1">
               
                    <div class="tablecontent">
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
            -
                                <tr>
                                    <td height="120px" style="text-align: right;">
                                        <img src="" Width="130px" height="90px"></td>
                                    <td>
                                            데이 바이 데이라이트
                                            <br>
                                            dead by daylight</td>
                                    <td>21000원
                                        </td>
                                    <td style="color: red;">
                                            -4200원
                                        </td>
                                    <td>16800원</td>
                                </tr>
                                
            
            
                                <tr>
                                    <td colspan="5" style="text-align: right; height: 70px;">
                                            총 결제금액 :
                                            200000원
                                        </td>
                                </tr>
            
            
                            </tbody>
                        </table>
                        <br> <br> <br>
    
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
                                  <th>-35000원</th>
                                </tr>
                                <tr>
                                    <td></td>
                                  <td>사용한POINT</td>
                                  <th>-3000POINT</th>
                                 
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
                        <a href="#" class="btn btn-dark"><i class="fa fa-shopping-cart"></i> 취소</a>
                        <a href="#" class="btn btn-danger">환불신청하기</a>
                    </div>



            </div>


















        </form>




</body>
</html>