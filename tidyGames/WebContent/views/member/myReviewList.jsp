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
    	width:1290px;	
    	/* border:1px solid rgba(255, 255, 255, 0.222); */
        /* height: */
        
    }
    #tableBox{
        width:800px;
        height:650px;
        /* margin-left:145px; */
        margin: 20px 0px 100px 105px;
        /* margin:auto; */
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
        padding-top:20px;
        width:100%;
        height:60%;
    }
    #tableOut2{
        width:100%;
        height:34%;
        /* padding:50px; */
        padding:0px 40px;
        /* background:rgba(128, 128, 128, 0.705); */

    }
    #table{
        margin:auto;
        width:700px;
        background:none;
        color:black;
    }
   /* 여기까지 */
    .table *{
        font-size:14px;
        padding:20px;
    }
    #blacklist{
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
        margin:5px;
    }
    #pTag{
        margin:50px 0px 0px 20px;
    }
    #empty{
        height:400px;
    }
    p>a:hover{
        text-decoration: none;
        color:rgba(255, 166, 0, 0.808);
    }


</style>
</head>
<body style="background:#0e332c;">

	<%@ include file="../common/includebar.jsp"%>
    
    
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
                <p><a href="">내가 작성한 리뷰 2개</a></p>
            </div>
        </div>
        
        <div id="box">
            <div></div>
            <div id="tableBox">
            <div id="tableOut1">
                <table id="table" class="table table-dark" align="center">
                    <tr>
                        <th width="60">제목</th>
                        <td width="300" style="padding-left:0px">
                            <input type="text" value="?" readonly>
                        </td>
                        <th width="70">작성자</th>
                        <td style="padding-left:0px">호빵</td>
                        <td align=right>작성일시 | 21-11-18</td>
                        <!-- <td width="50px"></td> -->
                    </tr>
                    <tr>
                        <td colspan="5">
                            <textarea name="content" class="content" cols="10" rows="8" style="resize:none" readonly></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <!-- <a download="" href="" style="color:black;">upload 파일명.png</a> -->
                        </td>

                    </tr>
                </table>
            </div>
            <div id="tableOut2">
           
            </div>
            
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
        
        <footer>
            <div style="height:100px"></div>
        </footer>
    </div>



</body>
</html>