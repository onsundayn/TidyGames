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
        margin: 25px 80px 0px 370px;
    }
    #line_3{
        width:145px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
        margin: 8px 0px 0px 355px;
    }
    #box{
    	width:1500px;	
    	/* border:1px solid rgba(255, 255, 255, 0.222); */
        /* height: */
        
    }
    #tableBox{
        width:800px;
        height:700px;
        margin:auto;
        margin-top:50px;
        margin-bottom: 100px;
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
        height:100%;
    }
    #table{
        margin:auto;
        width:700px;
        height:440px;
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
    #upfile{padding:0px;}
    #textInput{
        width:100%;
        height:100%;
        padding:0px;
        background:rgba(255, 255, 255, 0.383);
        border:1px solid gray;
    }
    .content{
        margin:0px;
        width:100%;
        height:100%;
        background:rgba(255, 255, 255, 0.383);
        border:1px solid gray;
    }
    #answerTable{
        background:none;
        color:black;
    }
    textarea:focus, input:focus{
        outline:none;
    }


</style>
</head>
<body style="background:#0e332c;">

    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    
    
    <div id="outer">
        <div id="line_1"></div>
 
        
        <div id="box">
            <div id="intro">QNA</div>
            <div id="line_3"></div>
            <div id="tableBox">
                
                <div id="tableTop">
                    <div id="leftTop">
                        <div>
                        <span>1:1 문의하기</span>
                    </div>
                </div>
            </div>
            
            <div id="tableOut1">
                
            <form action="">
                <table id="table" class="table table-dark" align="center">
                    <tr>
                        <th width="75">제목</th>
                        <td style="padding-left:0px">
                            <input id="textInput" type="text" value="">
                        </td>
                        <td width="300"></td>
                        <!-- <th width="70">작성자</th> -->
                        <!-- <td style="padding-left:0px">호빵</td> -->
                        <!-- <td align=right>작성일시 | 21-11-18</td> -->
                        <!-- <td width="50px"></td> -->
                    </tr>
                    <tr>
                        <td colspan="3" padding:0px>
                            <textarea name="content" class="content" cols="10" rows="6" style="resize:none"></textarea>
                        </td>
                    </tr>
                    <tr>
                        

                        <td colspan="3"><input id="upfile" type="file" name="upfile"></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <button type="button" onclick="history.back();" class="btn btn-sm btn-secondary">취소</button>
                            <button type="submit" class="btn btn-sm btn-primary">등록</button>
                        </td>
                    </tr>
                </table>
            </form>

            </div> 



                

     
                
            </div>        
            </from>
                
        </div>
            
                
      






        <footer>
            <div style="height:100px"></div>
        </footer>
    </div>



</body>
</html>