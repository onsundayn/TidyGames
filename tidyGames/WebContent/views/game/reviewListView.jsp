<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.TidyGames.game.model.vo.*"%>
<%
	Game g = (Game)request.getAttribute("g");
	Attachment3 at = (Attachment3)request.getAttribute("at");
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        width: 1200px;
        height:1000px;
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
        	<% if(list.isEmpty()) { %>
        		<h3 align="center" style="color:white"> 아직 리뷰가 없습니다.</h3>
        	<% }else{ %>
        		<% for(Review r : list) { %>
	            <div class="review-list">
	                <div class="user-info">
	                    <div id="profile-img">
	                        <img src="<%=contextPath%>/<%=r.getMemPic()%>">
	                    </div>
	                    <div id="user-name">
	                        <br>
	                        <%=r.getMemNick()%>
	                        <br><br>
	                       <%=r.getUploadDate() %>
	                    </div>
	                </div>
	                <div class="content">
	                    <span id="user-star">★★★★★</span>
	                    
	                    <a href=""><i class="far fa-thumbs-up fa-2x" style="float:right;"></i></a>
	                    <br>
	                    <textarea name="" id="review-content" readonly>
	                        <%=r.getContents()%>
	                    </textarea>
	                </div>
	            </div>
	            <% } %>
	          <% } %>
        </div>



    </div>
    
    

</body>
</html>