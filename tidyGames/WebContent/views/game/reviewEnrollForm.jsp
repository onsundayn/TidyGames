<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        font-size: 30px;
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
    .buttom-area{
        width:100%;
        height:410px;
        margin-top: 30px;
    }
    .review-list{
        background:rgba(211, 211, 211, 0.281);
        width:80%;
        height:100%;
    }
    .user-info{
        background: rgba(211, 211, 211, 0.644);
        float: left;
        width:25%;
        height:140px;
        margin-top: 87px;
        margin-left: 10px;
    }
    #profile-img{
        width:30%;
        height: 60%;
        float: left;
        margin:6px;
        margin-top: 30px;
        margin-left: 15px;
    }
    #user-name{
        width:45%;
        height: 80%;
        float: left;
        margin: 6px;
        margin-top: 7px;
        margin-left: 20px;
    }
    .content{
        width:70%;
        height:300px;
        float: right;
        margin-top: 30px;
        margin-right: 10px;
    }
    #review-content{
        width:100%;
        height:300px;
        background: rgba(211, 211, 211, 0.644);
    }
    #user-star{
        font-size: 21px;
        color: white;
    }
    .btn-3{
        height: 80px;
        background:rgba(211, 211, 211, 0.281);
        width:80%;
    }
    #golist{
        text-decoration: none;
        background: lightgray;
        border: 1px solid lightgray;
        color: black;
        border-radius: 3px;
        padding: 4px;
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
                    <span>데드셀</span>
                    <span style="font-size:20px;">DeadCells</span>
                    <br><br>
                </div>
                <div class="star-rating">
                    ★★★★★
                </div>
            </div>
            <div class="title-img">
                <img align="center" src="<%=contextPath%>/resources/image/Dead-Cells.jpg" alt="타이틀이미지">
            </div>
        </div>
        <div class="middle-area">
            <p style="color: white; font-size: 20px;"><br><br><br>리뷰작성</p>
        </div>
        <form action="">
            <div class="buttom-area">
                <div class="review-list">
                    <div class="user-info">
                        <div id="profile-img">
                            <img src="<%=contextPath%>/resources/image/user.png" width="70px" height="75px">
                        </div>
                        <div id="user-name">
                            <br><br>
                            사용자닉네임
                        </div>
                    </div>
                    <div class="content">
                        <span id="user-star">★★★★★</span>
                        <br><br>
                        <textarea name="review-content" id="review-content" placeholder="리뷰를 작성해주세요"></textarea>
                    </div>
                </div>
                <div class="btn-3">
                    <br>
                    <button type="submit">리뷰작성완료</button>
                    <button type="reset">초기화</button>
                    <button type="button" onclick="history.back()">뒤로가기</button>
                </div>
            </div>
        </form>
    </div>
    
    

</body>
</html>