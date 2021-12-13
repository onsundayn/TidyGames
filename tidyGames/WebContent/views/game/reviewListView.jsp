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
            <div id="dropdown">
                <select name="sort" id="sort" class="form-control" style="width:160px;">
                    <option value="">==정렬기준==</option>
                    <option value="">최신순</option>
                    <option value="">별점높은순</option>
                    <option value="">별점낮은순</option>
                    <option value="">추천많은순</option>
                </select>
            </div>
            <div id="btngo">
                <div align="right" style="width:100px;">
                    <a href="reviewEnrollForm.jsp" class="btn btn-sm btn-secondary">리뷰작성</a>
                </div>
            </div>
        </div>
        <div class="buttom-area">
            <div class="review-list">
                <div class="user-info">
                    <div id="profile-img">
                        <img src="" alt="사용자프로필">
                    </div>
                    <div id="user-name">
                        <br>
                        <button>닉네임</button>
                        <br><br>
                        <span>작성일</span>
                    </div>

                        
                </div>
                <div class="content">
                    <span id="user-star">★★★★★</span>
                    
                    <button style="float: right;">추천</button>
                    <br>
                    <textarea name="" id="review-content" readonly>
                        리뷰내용
                    </textarea>
                </div>
            </div>

            <div class="review-list"></div>
            <div class="review-list"></div>
            <div class="review-list"></div>
        </div>



    </div>
    
    

</body>
</html>