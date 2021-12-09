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
    /* 포인트조회영역 */
    .area2{
        width: 1000px;
        height: 200px;
        border: 3px solid red;
        font-weight: bold;
       
        margin-top: 40px;
        margin-left: 100px;
        background: rgb(227, 220, 210);;
    }


    /* 7일 ,한달, 3개월 6개월 조회버튼 */
    .dateSearch{
        margin: 8px 30px 0px 120px;
        display: inline-block;
        border: 1px solid orange;
   
    }
    .dateSearch>button{
        border-radius: 5px;
        font-weight: bold;
        background: none;
    }
    /* 달력 div */
    .datetable{
        display: inline-block;
        margin-right: 20px;
    }
    .datetable>input{
        border-radius: 5px;
        
    }
   /* 분류 */
   .search{
       border: 1px;
        margin-right: 10px;
       
   }
   /*  분류 검색창 영역 */
   .searcharea{
        width: 1000px;
        height: 70px;
        
        margin:30px 0px 10px 90px;
      
      
    }
    .searcharea div{
        display:inline;
    }
    .searcharea form{
        display: inline;
    }

    /* 테이블 영역 */
    .area3{
        border: 3px solid rebeccapurple;
        width: 1000px;
        height: 500px;
        margin: 50px 0px 0px 100px;
       
    }

    #ordercontent{
        color: white;
        text-align: center;

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
            <h2>회원 주문 내역 조회</h2><br><br>
            <div style="background: grey; width: 1000px; height: 2px;"></div>
        </div>
        <br><br><br>
        
        <!-- 조회div -->
        <div class="area2">
           
            <form action="">

            

                <div class="searcharea">
                        <div class="search">
                            <select class="btn btn-outline-secondary" >
                                <option selected value="uptodate">회원ID</option>
                                <option value="olddae" >주문번호</option>
                
                            </select>
                        
                        </div>
                    
        
                        <div id="game_search">
                            <input type="text" name="keyword" style="border-radius: 3px; width: 600px; height:40px; border: 1px solid white;" placeholder="검색명을 입력하세요.">
                        </div>
                        
                        <div id="search_btn">
                            <button type="submit" id="icon_btn" style="background: none;"><i class="fas fa-search"></i></button>
                        </div>
                </div> 

            
                <div class="dateSearch">
                   
                   <button name="weekend">일주일</button>
                   <button name="month">1개월</button>
                   <button name="threemonth">3개월</button>
                   <button name="sixmonth">6개월</button>
                
                </div>

                <div class="datetable">
                    <input type="date" name="startdate" class="date">
                    <span style="color:black">&nbsp;&nbsp; ~ &nbsp;&nbsp;</span>
                    <input type="date" name="startdate" class="date">
                </div>
            
                
                <button type="submit" class="btn btn-sm btn-secondary" style="width: 50px; height: 35px;">조회</button>

            </form>
        </div>




        <!-- 테이블div -->
            <div class="area3">
                <table class="table table-hover" id="ordercontent">
                    <thead>
                      <tr style="background: white; color: black;">
                        <th>번호</th>
                        <th>주문번호</th>
                        <th>게임명</th>
                        <th>회원ID</th>
                        <th>결제일</th>
                        <th>결제금액</th>
                        <th>결제상태</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>10000000</td>
                        <td>Battlefields</td>
                        <td>user01</td>
                        <td>2021-11-10</td>
                        <td>27500원</td>
                        <td>환불완료</td>
                        <td><button class="btn btn-success btn-sm">상세보기</button></td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>10000000</td>
                        <td>Battlefields</td>
                        <td>user01</td>
                        <td>2021-11-10</td>
                        <td>27500원</td>
                        <td>결제완료</td>
                        <td><button class="btn btn-success btn-sm">상세보기</button></td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>10000000</td>
                        <td>Battlefields</td>
                        <td>user01</td>
                        <td>2021-11-10</td>
                        <td>27500원</td>
                        <td>환불완료</td>
                        <td><button class="btn btn-success btn-sm">상세보기</button></td>
                      </tr>

                      <tr><td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td></tr>
                    </tbody>
                  </table>


            </div>



    </div>

</body>
</html>