<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.TidyGames.member.model.vo.*"%>
    
    
 <% 
 ArrayList<Point> point = (ArrayList<Point>)request.getAttribute("point");
 Point sum = (Point)request.getAttribute("sum");
 
 %>
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
        height: 150px;
        border: 3px solid red;
        font-weight: bold;
        color: white;
        margin-top: 40px;
        margin-left: 100px;
        background: rgb(227, 220, 210);
    }
    /* 7일 ,한달, 3개월 6개월 조회버튼 */
    .dateSearch{
        margin: 8px 30px 0px 70px;
        display: inline-block;
   
    }
    .dateSearch>button{
        border-radius: 5px;
        font-weight: bold;
        background: none;
    }
    /* 달력 div */
    .datetable{
        display: inline-block;
    }
    .datetable>input{
        border-radius: 5px;
        font-weight: bold;
    }
    /* 전체상태 div */
    .pointstatus{
        display: inline-block;
        margin-left: 30px;
        margin-right: 10px;
    }

    .pointstatus>select{
        border-radius: 5px;
        background: white;
        width: 150px;
        height: 30px;
        text-align: center;
        font-weight: bold;
        
    }
    select>option{
        font-weight: bold;
    }
    /* 포인트조회내역 영역 */
    .area3{
        width: 1000px;
        margin-left: 100px;
        border: 1px solid red;
        

    }

    .table table-bordered tr{
        background: white;
    }

    #pointcontent{
        color:white;
        text-align: center;

    }

    .selectForm{
        border: 1px solid red;
        width: 650px;
        float: right;
        margin-top: 10px;
    }
    /* 조회 버튼 영역 */
    .area4{
        width: 1000px;
        height: 40px;
        border: 1px solid blue;
        margin:0px 0px 20px 100px;
    }

    .area4>select{
        float: right;
    }

    #pointbar{
        color:orange;
    }
    
    .area5{
        background: none;
        text-align: center;
        border: 1px solid blue;
        width: 1000px;
        height: 400px;
        margin-top: 50px;
        margin-left: 100px;
        color:white;
       
    }
    .area4>h4 {
        font-size: 18px;
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
        <div class="area1">
            <h3>닉네임님의</h3><h2>TIDY POINT 내역</h2>
            <div style="background: grey; width: 1000px; height: 2px;"></div>
        </div>
        <br><br><br>
		
	
		
        <div class="area2">
            <div style="color:black; font-size:18px; font-weight: bold; margin: 10px 0px 0px 70px;">보유 TIDY POINT</div>
            <span style="margin-left: 60px;"><img src="<%=contextPath%>/resources/image/point.png" width="70px" height="70px"></span>
            <!-- 보유포인트 조회 -->
            <span style="font-size: 30px; color:black;"><%=sum.getSum()%> POINT</span>

            <span class="selectForm">
           <form action="<%=request.getContextPath() %>/pointDate.me" method="post">
                
                <!-- <div class="dateSearch">

                   <button name="weekend">일주일</button>
                   <button name="month">1개월</button>
                   <button name="threemonth">3개월</button>
                   <button name="sixmonth">6개월</button>
                
                </div> -->

                <div class="datetable">
                    <input type="date" name="startDate" class="date">
                    <span style="color:black">&nbsp;&nbsp; ~ &nbsp;&nbsp;</span>
                    <input type="date" name="endDate" class="date">
                </div>
             
                <div class="pointstatus">

                    <select name="select">
                        <option name= "all"  value="all" selected>전체상태</option>
                        <option name="save" value="save">적립</option>
                        <option name="use" value="use">사용</option>

                    </select>
                </div>
                <button type="submit" class="btn btn-sm btn-secondary" style="width: 50px; height: 35px;">조회</button>

            </form>

            </span>
            <div style="color:grey; margin:10px 0px 0px 70px">적립된 당일로부터 POINT는 5년동안 유지됩니다.</div>
        </div>

     
        


        <br><br>
        <div style="width: 1000px; height: 2px; background: gray; margin:30px 0px 20px 100px;" ></div>
        <br><br>
			<form action="" method="post"></form>
            <div class="area4">
                <select class="btn btn-outline-secondary" style="color: white;"">
                    <option selected value="uptodate"><button type="submit">최신순</button></option>
                    <option class="olddate" ><button onclick="olddate();">오래된순</button></option>
    
                </select>
             </div>

        
		
        <div class="area3">

            <table class="table table-bordered" id="pointcontent">
                <thead>
	
                   <tr style="background: white; color:black;">
                    <th>날짜</th>
                    <th>적립/사용내용</th>
                    <th>POINT</th>
                    <th>적립/사용</th>
                  </tr>
                </thead>
                
                  	<%for(Point p : point){ %>
                <tbody>
                  <tr class="usecol">
                    <td><%=p.getPointDate() %></td>
                    <td><%=p.getPointCotent() %></td>
                    <td><%=p.getPointAmount() %></td>
                    
                    <%if(p.getPointAmount() > 0) {%>
                    	<th style="color:rgb(57, 57, 216);">적립</th>
                      <% } else { %>
	                    <td style="color:red;">사용</td>
               		 <% }  %>	
                    	
                  </tr>
                </tbody>
                 	<% } %>
              </table>
        </div>
	

    </div>


		<script>
		   
		

			function olddate() {
				$.ajax({
					url : "oldDate.me",
					type : "post",
					data : "",
					success : function(point) {

						location.href = "";

					},
					error : function() {
						
					}
				});
				
			}

		</script>
	




   


</body>
</html>