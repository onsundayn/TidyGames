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
        height:1100px;
        display:flex;
        margin: auto;
        margin-top: 70px;
        background: lightgray;
        flex-wrap: wrap;
    }
    .form-area{
        width: 1200px;
        height:1100px;
        display:flex;
        margin: auto;
        margin-top: 70px;
        background: lightgray;
        flex-wrap: wrap;
    }
    .title{
        color: black;
        font-size:25px;
        margin-bottom: 50px;
    }
    .left-area{
        height: 700px;
        width: 700px;
        flex:1;
    }
    #big{
        width:700px;
        height:300px;
    }
    .img11 img{
        width:100%;
        height: 100%;
        object-fit: cover;
    }
    #small{
        background: darkgrey;
        width:700px;
        height:120px;
    }
    #small img{
        width:140px;
        height:90px;
        margin:15px;
    }
    .right-area{
        width:500px;
        height:700px;
        margin-top: 141px;
        flex:2;
    }
    #t-img{
        width:450px;
        height:200px;
        margin: auto;
    }
    .right-area div{
        color: black;
        margin-left: 15px;
    }
    #price{
        width: 200px;
        height:40px;
        margin-top: 30px;
    }
    #content{
        width:450px;
        height:110px;
    }
    .category-btn{
        background: rgb(102, 107, 112);
        text-decoration: none;
        font-size: 12px;
        color:black;
        padding: 5px;
        margin: 5px;
        border-radius: 5px;
    }
    .file-area{
        width:1200px;
        height: 200px;
    }
    .file-area button{
        width:130px;
        height: 50px;
        margin:30px;
        border-radius: 7px;
        font-weight: bold;
    }
    .file-area input{
        margin:-10px;
    }
    #alpha{
        margin-left: 100px;
    }
    .menu-name{
        color: rgba(255, 255, 255, 0.712);
        font-weight: bold;
        font-size: 30px;
        margin-top: 50px;
        margin-left:450px;
    }
</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    <%@ include file="../common/companySidebar.jsp"%>


    <div class="menu-name">
        <h2>게임 업로드</h2>
    </div>

    <div class="outer">
        <form action="<%=contextPath%>/insert.gc" class="form-area" method="post" enctype="multipart/form-data" >
			<input type="hidden" value="<%=loginCompany.getCompanyNo()%>" name="cno">
            <div class="left-area">
                <div class="title">
                    <input type="text" placeholder="한글게임명" name="korName"><br>
                    <input type="text" placeholder="영문게임명" name="engName">
                </div>
                
                <div  class="img11" id="big">
                    <img src="...">
                </div>
                
                <div class="img11" id="small" align="center">
                    <img src="">
                    <img src="">
                    <img src="">
                    <img src="">
                </div>
    
                <div id="btn" align="center">
                    <button>&lt;</button>
                    <button></button>
                    <button></button>
                    <button></button>
                    <button>&gt;</button>
                </div>
                
            </div>
            
            
            <div class="right-area">
                <div class="info-area">
                    <div id="t-img">
                        <input type="file" name="titleFile">
                    </div>
                    
                    <div id="price">
                        <span>판매가 : <input type="text" name="price"></span>
                    </div>
                    <br>
                    <div id="content">
                        <textarea name="" id="" cols="55" rows="6" placeholder="게임 소개 및 내용 작성" name="content"></textarea>
                    </div>
                    <br><br><br>
                    <div id="release-date">
                        <p>
                            출시일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="예상출시일(숫자만입력)" name="releaseDate"> <br>
                            장르 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <input type="text" placeholder="게임장르" name="category"><br>
                            플레이어 &nbsp;&nbsp;&nbsp; 싱글플레이어<br> <!-- 장르랑 플레이어 dropdown 선택하는 형식으로-->
                        </p>
                    </div>
                    <div id="tag">
                        관련태그&nbsp;&nbsp;&nbsp; <!--이 부분도 dropdown 복수 선택/ 선택하면 버튼 생기게 하면 더 좋겠음-->
                        <a href="" class="category-btn">싱글플레이어</a>
                                <a href="" class="category-btn">어드벤처</a>
                                <a href="" class="category-btn">탐험</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="file-area" align="center">
                        <pre style="font-weight: bold; font-size: 17px;">
            알파테스트 첨부      최소사양/요구사항 zip파일 첨부
                        </pre>
                        
                        <input type="file" name="alpha" id="alpha">
                        <input type="file" name="minimum">
                        <br><br>
                        <button class="btn btn-sm btn-primary">저장</button>
                        <button type="submit" class="btn btn-sm btn-success">게임 승인 요청</button>
                    </div>

        </form>
                
            </div>
            
    
    
	

</body>
</html>