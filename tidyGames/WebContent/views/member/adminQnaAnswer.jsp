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
    #line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    #intro{
        font-size: 33px;
        font-weight: 900;
        color :white;
        margin: 25px 80px 0px 105px;
    }
    #line_3{
        width:125px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
        margin: 8px 0px 0px 95px;
    }
    #box{
    	width:1290px;	
    	/* border:1px solid rgba(255, 255, 255, 0.222); */
        /* height: */
        
    }
    #tableBox{
        width:800px;
        height:800px;
        /* margin-left:145px; */
        margin: 30px 0px 100px 105px;
        background-color: rgb(197, 197, 197);
        border: 10px solid rgba(255, 255, 255, 0.555);
    }
    #tableTop div{
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
        width:100%;
        height:60%;
    }
    #tableOut2{
        width:100%;
        height:40%;
        padding:40px;
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
    #checkBox{
        width:20px;
        height:20px;
        margin-top:3px;
    }
    #qnaList{
        color:orange;
    }
    tbody a{
        color:gray;
    }
    .btn{
        margin:0px;
        padding:0px;
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
        /* height:100%;         */
        background:none;
        border:none;
    }
    #answerTable{
        background:none;
        color:black;
    }
    #answerArea{
        background:rgba(255, 255, 255, 0.383);
        border:1px solid gray;
    }

    textarea:focus{
        outline:none;
    }


</style>
</head>
<body style="background:#0e332c;">

    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    
    
    <div id="outer">
        <div id="line_1"></div>
        
        <div>
            <%@ include file="../common/adminSidebar.jsp" %>
        </div>
        
        <div id="box">
            <div id="intro">QNA</div>
            <div id="line_3"></div>
            <form action="">
            <div id="tableBox">
            
            <div id="tableTop">
                <div id="leftTop">
                    <div>
                        <span>1:1 문의내역 답변</span>
                    </div>
                </div>
            </div>

            <div id="tableOut1">

                <table id="table" class="table table-dark" align="center">
                    <tr>
                        <th width="60">제목</th>
                        <td width="300" style="padding-left:0px">
                            <input type="text" value="탈퇴 후 재가입할 수 있나요?" readonly>
                        </td>
                        <th width="70">작성자</th>
                        <td style="padding-left:0px">호빵</td>
                        <td align=right>작성일시 | 21-11-18</td>
                        <!-- <td width="50px"></td> -->
                    </tr>
                    <tr>
                        <td colspan="5">
                            <textarea name="content" class="content" cols="10" rows="6" style="resize:none" readonly>아이디를 바꾸고 싶습니다 탈퇴 후에 바로 재가입이 가능한가요?</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">첨부파일 </th>
                        <td colspan="4">
                            <a download="" href="" style="color:black;">upload 파일명.png</a>
                        </td>

                    </tr>
                </table>


            </div>
            <form action="">
            <div id="tableOut2">
                <table id="answerTable" class="table table-dark" align="center">
                    <tr class="">
                        <th width="55" style="padding-right:0px">답변 | </th>
                        <th>Tidy Games</th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <textarea name="answer" id="answerArea" class="content" cols="10" rows="3" style="resize:none"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <button type="submit" class="btn btn-sm btn-secondary" disabled>수정</button>
                            <button type="submit" class="btn btn-sm btn-primary">등록</button>
                        </td>
                    </tr>
                </table>
            </div>
            </form>


                

     
                
            </div>        
            </from>
                
        </div>
            
                
      






        <footer>
            <div style="height:100px"></div>
        </footer>
    </div>



</body>
</html>