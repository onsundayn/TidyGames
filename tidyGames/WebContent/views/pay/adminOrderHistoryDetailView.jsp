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
    .area1{
        width: 1000px;
        height: 100px;
        border: 3px solid blue;
        font-weight: bold;
        color: white;
        margin-top: 50px;
        margin-left: 100px;
    }


  /* 주문내역 게임 1개 영역 */
  .area2{
        width: 1000px;
        height: 350px;
        border: 1px solid violet;
        margin-left: 100px;
    }
  
    #orderList{
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

        <div class="area1">
            <span style="color: grey; font-size: 18px;"> 회원주문관리 </span>
            <span style="color:white; font-size: 25px; font-weight: bold;"> >회원주문상세내역</span>
            <div style="background: grey; width: 1000px; height: 2px;"></div>
        </div>
        <br><br><br>
        
    
        <div class="area2">

            <table class="table table-borderless" style="width: 1000px; color:white; border:1px solid grey; background:rgba(20, 20, 20, 0.87)">
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
                      <td width ="500" height="40px">
                       
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
                          <div><button class="btn btn-primary">환불요청</button></div> <br>
                          <div><button class="btn btn-secondary">상세보기</button></div>
                      </td>
                  </tr>
                

              
                </tbody>
              </table>
            <br><br><br>
        </div>


     </div>

           






    </div>

</body>
</html>