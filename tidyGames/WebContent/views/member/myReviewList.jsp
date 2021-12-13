<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{
		box-sizing: border-box;
		color:white;
		/* border: 1px solid rgba(255, 255, 255, 0.555); */
	}
	#outer{
        width:1500px;
        /* height:1500px; */
        margin:auto;
    }
    #outer>div{float:left;}
    .line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    #intro{
        width:210px;
        font-size: 33px;
        font-weight: 900;
        color :white;
        margin: 30px 0px 0px 110px;
    }
    #line_3{
        width:210px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
        margin: 8px 0px 0px 110px;
    }
    #box{
    	/* width:1290px;	 */
    	/* border:1px solid rgba(255, 255, 255, 0.222); */
        /* height: */
        
    }
    .tableBox{
        width:800px;
        height:480px;
        margin: 20px 0px 10px 105px;
        background-color: rgb(197, 197, 197);
        border: 10px solid rgba(255, 255, 255, 0.555);
    }
    #top>div{
        float:left;
    }
    #pTag>*{
        float:left;
    }
    #leftTop{   
        width:100%;
        /* margin:20px; */
        margin:30px 20px 50px 0px;
    }
    #leftTop span{
        font-size:30px;
        font-weight: bolder;
        color:black;
        margin: 0px 50px 0px 40px;
    }
    #tableOut1{
        padding-top:50px;
        width:100%;
        height:100%;
    }
    #tableOut2{
        width:100%;
        height:100%;
        margin:0px;
        padding:0px;
    }
    #table{
        margin:auto;
        margin-top:30px;
        width:700px;
        background:none;
        color:black;
    }
   /* 여기까지 */
    .table *{
        font-size:14px;
        /* padding:21px; */
    }
    #myReview{
        color:orange;
    }
    #table input{
        width:100%;
        height:100%;
        padding:0px;
        background:none;
        border:none;
    }
    .content{
        margin:0px;
        width:100%;
        background:none;
        border:none;
        font-size:16px;
    }
    #answerTable{
        background:none;
        color:black;
    }
    textarea:focus, input:focus{
        outline:none;
    }
    #top a{
        font-size:18px;
        color:rgba(255, 255, 255, 0.666);

    }
    #pTag{
        margin:70px 0px 0px 370px;
    }
    #empty{
        height:400px;
    }
    p>a:hover{
        text-decoration: none;
        color:rgba(255, 166, 0, 0.808);
    }
    #gameList{
        height:200px;
    }
    #pagebar{
        margin: 10px 10px 10px 110px;
    }

</style>
</head>
<body style="background:#0e332c;">

    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    
    
    <div id="outer">
        <div class="line_1"></div>
        
        <div>
            <%@ include file="../common/memberSidebar.jsp" %>
        </div>

        <div id="top">
            <div>
                <div id="intro">나의 리뷰</div>
                <div id="line_3"></div>
            </div>
            <div id="pTag">
                <a href="" style="font-size:20px; font-weight: bold;">내가 작성한 리뷰 2개</a>
            </div>
        </div>
        
            <div class="tableBox">
                <table id="table" class="table table-dark" align="center">
                    <tr>
                        <td rowspan="3" width="200">
                            <img src="">
                        </td>
                        <td style="font-size:20px; font-weight:bold; padding:0px; padding-top:20px;">스타듀밸리</td>
                    </tr>
                    <tr>
                        <td style="border:none; padding:0px;">☆☆☆</td>
                    </tr>
                    <tr >
                        <td colspan="2"  style="border:none" align=right>작성일시 | 21-11-18</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <textarea name="content" class="content" cols="10" rows="8" style="resize:none" readonly>정말 재미있어요 완전 추천합니다아</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align=right width="70">추천 16</td>
                    </tr>
                </table>
            </div>

            <div>
                <div id="gameList" class="tableBox" style="margin-bottom: 20px;">
                    <table id="table" class="table table-dark" align="center">
                    <tr align="center">
                        <th><a style="font-size:15px;">game list name</a></th>
                    </tr>
                    <tr align="center">
                        <th><a style="font-size:15px;">game list name</a></th>
                    </tr>
                    <tr align="center">
                        <th><a style="font-size:15px;">game list name</a></th>
                    </tr>
                    
                </table>
                
            </div>
            <div>
                <div id="pagebar" align="center">
                    <button class="btn btn-sm btn-outline-secondary">&lt;</button>   
                    <button class="btn btn-sm btn-outline-secondary">1</button>
                    <button class="btn btn-sm btn-outline-secondary">2</button>
                    <button class="btn btn-sm btn-outline-secondary">3</button>
                    <button class="btn btn-sm btn-outline-secondary">4</button>
                    <button class="btn btn-sm btn-outline-secondary">5</button>
                    <button class="btn btn-sm btn-outline-secondary">&gt;</button>
                </div>  
                </div>
            </div>
    </div>



</body>
</html>