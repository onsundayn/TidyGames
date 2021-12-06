<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        width: 1500px;
        height:800px;
        display:flex;
        margin: auto;
    }
    .title{
        color: white;
        font-size:25px;
    }
    /*
    .media{
        width:700px;
        height: 500px;
        flex:2;
        display: table-cell;
        vertical-align: middle;
        border: 1px solid red;
    }*/
    .left-area{
        height: 700px;
        width: 700px;
    }
    #big{
        width:700px;
        height:300px;
        border: 1px solid red;
    }
    #small{
        background: darkgrey;
        width:700px;
        height:120px;
        border: 1px solid red;
    }
    #small img{
        width:140px;
        height:90px;
        margin:15px;
    }
    .right-area{
        width:500px;
        height:600px;
        border: 1px solid red;
    }
    #t-img{
        width:450px;
        height:200px;
        border: 1px solid red;
        margin: auto;
    }

</style>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>

    <div class="outer">
        <div class="left-area">
            <div class="title">
                <p style="border: 1px solid red;">
                    슬라임랜처 <br>
                    Slime Rancher
                </p>
            </div>
            
            <div class="media">
                <div id="big">
                    <img src="">
                </div>
            </div>
            <div id="small" align="center">
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
                    <img src="...">
                </div>

                <div id="price">
                    <span>판매가 : 21000원</span>
                </div>
                <div id="link">
                    <button>공유</button>
                </div>
                <div id="content">
                    <span>슬라임랜처는 어쩌구저쩌구</span>
                </div>
                <div id="release-date">
                    <span id="left">
                        출시일<br>
                        장르<br>
                        플레이어
                    </span>
                    <span id="right">
                        2017-08-02
                        액션게임
                        싱글플레이
                    </span>
                </div>
                <div id="tag">
                    관련태그 <button>싱글플레이어</button> 
                            <button>어드벤처</button>
                            <button>탐험</button>
                </div>
            </div>
            <div class="btn-area">
                <span>
                    <img src="...">
                </span>

                <span>
                    <img src="">
                </span>
                <br>
                <span>
                    <img src="...">
                </span>
                <span>
                    <a href="">게임리뷰 보러가기</a>
                </span>
            </div>

        </div>


    </div>
    
    
    
	

</body>
</html>