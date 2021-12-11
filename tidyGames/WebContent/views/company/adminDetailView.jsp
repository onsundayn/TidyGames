<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#listco{color:orange;}
    .outer{
	    background-color: #0e332c;
	    color:white;
	    width:1000px;
	    height:900px;
	    margin:auto;
	    margin-top:50px;
	    margin-left:400px;
    }
    h2{
    	font-weight:normal;
    }
    .navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
    .bar{float:left;}
    #gametable{text-align:center; color:white;}
    #gametable>tbody>tr:hover{
        background:lightgrey;
    	color:black;
    }
</style>
</head>
<body>

		<%@ include file="../common/topbar.jsp" %>
		
		<div class="navi">
			<%@ include file="../common/navibar.jsp" %>
        </div>
        
        <div class="bar">
            <%@ include file="../common/adminSidebar.jsp" %>
        </div>
        
	    <div class="outer">
	    

        <h2>게임사 상세 조회</h2>
        <br><br>
           <table>
               <tr>
                   <th width="100"><h4>게임사</h4></th>
                   <td><h5>보람게임즈</h5></td>
               </tr>
               <tr><td colspan=2 height="20"></td></tr>
               <tr>
                   <th><h4>아이디</h4></th>
                   <td><h5>BoramGames</h5></td>
               </tr>
               <tr><td colspan=2 height="20"></td></tr>
               <tr>
                   <th><h4>등록코드</h4></th>
                   <td><h5>vkEnsKl</h5></td>
               </tr>
               <tr><td colspan=2 height="20"></td></tr>
               <tr>
                   <th><h4>대표자</h4></th>
                   <td><h5>보람강</h5></td>
               </tr>
               <tr><td colspan=2 height="20"></td></tr>
               <tr>
                   <th style="display: flow-root;"><h4>코멘트</h4></th>
                   <td><p>기대되는 신생 게임 회사</p></td>
               </tr>
               <tr><td colspan=2 height="20"></td></tr>
               <tr>
               	<th><h4>제공게임</h4></th>
               	<td></td>
               </tr>
           </table>
           <br>
           <div class="gametb" style="size:auto">           
      		<table class="table table-sm thead-lignt" id="gametable">
      			<thead>
      				<th width="100">게임</th>
      				<th width="100">출시일</th>
      				<th width="100">장르</th>
      				<th width="150">게임상세페이지</th>
      			</thead>
      			<tbody>
      				<tr>
      					<td colspan="4">등록된 게임이 없습니다</td>
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>
      				<tr>
       				<td>A게임</td>
       				<td>2021-12-08</td>
       				<td>공포</td>
       				<td><a href="" class="btn btn-sm btn-info">조회</a></td>	
      				</tr>  				
      			</tbody>
      		</table>
           </div>
		<br>
           <div align="right" style="width:1000px">
               <button type="button" onclick="history.back();" class="btn btn-sm btn-secondary">뒤로가기</button>
               <a href="<%= contextPath %>/updateform.co" class="btn btn-sm btn-success">수정</a>
               <a href="" class="btn btn-sm btn-danger">삭제</a>
           </div>
           <br><br>

    </div>

</body>
</html>