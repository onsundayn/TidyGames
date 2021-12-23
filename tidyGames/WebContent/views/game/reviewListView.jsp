<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.TidyGames.game.model.vo.*"%>
<%
	Game g = (Game)request.getAttribute("g");
	Attachment3 at = (Attachment3)request.getAttribute("at");
	//ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        width: 1200px;
        height:auto;
        margin: auto;
    }
    .top-line{
        display: inline-block;
        width: 100%;
        height:210px;
        margin-top: 70px;
    }
    .left-area{
        width: 50%;
        height:100%;
        float: left;
        color: white;
    }
    .title{
        font-size: 25px;
    }
    .title-img{
        width:50%;
        height:100%;
        float: right;
        object-fit: cover;
    }
    .title-img img{
        width:70%;
        height: 100%;
        margin-right: 80px;
    }
    .middle-area{
        width:100%;
        height: 130px;
        display: inline-block;
    }
    #btngo, #dropdown{
        width:50%;
        height:100%;
    }
    #btngo{
        width:300px;
        margin-left: 500px;
        padding-top: 50px;
    }
    #dropdown{
        float: left;
    }
    #sort, #btn{
        margin-top: 45px;
    }
    .buttom-area{
        width:100%;
        height: 200px;
    }
    .review-list{
        background:rgba(211, 211, 211, 0.281);
        width:80%;
        height:100%;
        margin-top: 20px;
        display: inline-block;
    }
    .user-info{
        background: rgba(211, 211, 211, 0.644);
        float: left;
        width:25%;
        height:140px;
        margin-top: 40px;
        margin-left: 10px;
    }
    #profile-img{
        width:30%;
        height: 60%;
        float: left;
        margin:6px;
        margin-top: 25px;
        border: 1px solid red;
    }
    #user-name{
        width:55%;
        height: 80%;
        float: left;
        margin: 6px;
        margin-top: 7px;
    }
    .content{
        width:70%;
        height:170px;
        float: right;
        margin-top: 10px;
        margin-right: 10px;
    }
    #review-content{
        width:100%;
        height:140px;
        background: rgba(211, 211, 211, 0.644);
    }
    #user-star{
        font-size: 21px;
        color: white;
    }
    .star-rating a{
        text-decoration:none;
        color:white;
        mouse-cursor:pointer;
    }
    .star-rating a:hover{
        text-decoration: none;
        color:orange;
    }

</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>


    <div class="outer" align="center">
        <div class="top-line">
            <div class="left-area">
                <div class="title">
                    <br>
                    <%=g.getKorName()%>
                    <br>
                    <%=g.getEngName()%>
                    <br><br>
                </div>
                <div class="star-rating">
                   <a href="">
                    	<!-- 별점 띄워줄때 반복문 돌려볼까?-->
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    	<i class="fas fa-star fa-lg"></i>
                    </a>
                </div>
            </div>
            <div class="title-img">
                <img src="<%=contextPath%>/<%=at.getFilePath() + at.getChangeName()%>">
            </div>
        </div>
        <div class="middle-area">
            <div id="dropdown">
                <select name="sort" id="sort" class="form-control" style="width:160px;">
                    <option value="">==정렬기준==</option>
                    <option value="">최신순</option>
                    <option value="">별점높은순</option>
                    <option value="">별점낮은순</option>
                    <option value="">추천많은순</option>
                </select>
            </div>
            <% if(loginUser != null) { %>
            <div id="btngo">
                <div align="right" style="width:100px;">
                    <a href="<%=contextPath %>/enrollForm.ga?gno=<%=g.getGameNo()%>" class="btn btn-sm btn-secondary">리뷰작성</a>
                </div>
            </div>
     		<% } %>
        </div>
        <div class="buttom-area">
        		
			    <div id="review-area">
			    	<table>
			    		<thead>
			    			
			    			<tr>
			    				<th>리뷰작성</th>
			    				<% if(loginUser != null) { //로그인 되어있을 경우%>
			    				<td>
			    					<textarea id="reviewContent" rows="3" cols="50" style="resize:none"></textarea>
			    				</td>
			    				<td><button onclick="insertReview();">리뷰등록</button></td>
			    				<% }else { // 로그인 안되어있을 경우 %>
			    				<td>
			    					<textarea rows="3" cols="50" style="resize:none" readonly>로그인 후 이용 가능합니다.</textarea>
			    				</td>
			    				<td><button disabled>리뷰등록</button></td>
			    				<% } %> 
			    			</tr>
			    			
			    		</thead>
			    		<tbody>
			    		

			    			
			    		</tbody>
			    	
			    	</table>
			    	
			    	<br><br>
			    	
			    	<script>
			    		$(function(){ //페이지로딩되고 곧바로 호출
			    			
			    			selectReviewList();
			    		
			    		})
			    		// ajax로 댓글 작성용
			    		function insertReview(){
			    			
			    			$.ajax({
			    				url:"rinsert.ga",
			    				data:{
			    					contents:$("#reviewContent").val(),
			    					gno:<%=g.getGameNo()%>
			    				},
			    				type:"post",
			    				success:function(result){
			    					if(result > 0){//댓글작성 성공 => 갱신된 댓글 리스트 조회
			    						selectReviewList();
			    					    $("#reviewContent").val("");
			    					}
			    				},error:function(){
			    					console.log("댓글작성용 ajax 통신 실패")
			    				}
			    			})
			    			
			    		}
			    		// ajax로 해당 게시글에 딸린 댓글 목록 조회용
			    		function selectReviewList(){
			    			$.ajax({
			    				url:"rList.ga",
			    				data:{gno:<%=g.getGameNo()%>},
			    				success:function(list){
			    					
			    					//console.log(list);
			    					
			    					let result = "";
			    					// 반복문이용해서
			    					for(let i=0; i<list.length; i++){
			    						result += "<tr>"
									    			+ "<td>" + list[i].writer + "</td>"
									    		 	+ "<td>" + list[i].contents + "</td>"
									    			+ "<td>" + list[i].uploadDate + "</td>"
									    		   + "</tr>";
			    					}
			    					
			    					$("#review-area tbody").html(result);
			    					
			    				},error:function(){
			    					console.log("댓글목록조회용 ajax 통신실패");
			    				}
			    			})
			    		}
			    	</script>
			    	
			    </div>
        </div>
    </div>
    


</body>
</html>