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
        margin: 25px 80px 0px 45px;
    }
    #line_3{
        width:145px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
        margin: 8px 0px 0px 45px;
    }
    #box{
    	width:1290px;	
    	/* border:1px solid rgba(255, 255, 255, 0.222); */
        /* height: */
        
    }
    #tableBox{
        width:1250px;
        height:790px;
        /* margin-left:145px; */
        margin: 30px 0px 100px 35px;
        background-color: rgb(197, 197, 197);
        border: 10px solid rgba(255, 255, 255, 0.555);
    }
    #tableTop div{
        float:left;
        /* width:400px; */
        /* border:1px solid white; */
    }
    #leftTop{   
        width:50%;
        margin:20px;
        margin:50px 20px 20px 20px;
       /* margin-left:80px; */
    }
    #rightTop{
        margin: 60px 0px 10px 55px;
    }
    #leftTop span{
        font-size:30px;
        font-weight: bolder;
        color:black;
        margin: 0px 50px 0px 40px;
    }
    #table{
        margin:auto;
        width:1200px;
        /* background-color: gray; */
    }
    #table th{
        font-size:18px;
    }
    #btn{
        padding:0px;
        /* width:46px;
        height:24px; */
        margin-left:3px;
    }
    #checkBox{
        width:20px;
        height:20px;
        margin-top:3px;
    }
    #reportList{
        color:orange;
    }
    tbody a{
        color:gray;
    }
    #table td{padding:4px;}
    #tableOut1{
        width:100%;
        height:93%;
    }
    #tableOut2{
        width:100%;
        height:7%;
    }
    #access{
        border-radius:5px;
        background:rgba(255, 255, 255, 0.555);
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
            <div id="intro">신고 내역</div>
            <div id="line_3"></div>
            
      
            <form action="">
    	    <div id="tableBox">
                <div id="tableTop">
                    <div id="leftTop">
                        <div>
                            <span>신고 내역 조회</span>
                        </div>
                    </div>
                    <div>
                        <div id="rightTop">
                        <!-- <a href="" class="btn btn-secondary">삭제</a>
                        <a href="" class="btn btn-dark">확인</a> -->
                    </div>  
                </div>
                        <div id="rightTop">
                            <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-dark" disabled>회원 ID</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                                    <span class="caret"></span>
                                    </button>
                                    <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">닉네임</a>
                                    <a class="dropdown-item" href="#">이 름</a>
                                    </div>
                            </div>
                            <div>
                                <input type="text" id="selectKeyword" name="keyword" placeholder="조회를 위한 입력">
                            </div>
                            <button class="btn btn-sm btn-dark" onclick="" >조회</button>
                        </div>

                </div>
                <div id="tableOut1">
                <table id="table" class="table table-hover">
                    <thead>
                        <tr align="center">
                            <th width="30"> </th>
                            <th width="30">No.</th>
                            <th width="100">닉네임</th>
                            <th width="180">신고한 글</th>
                            <th width="130">신고 사유</th>
                            <th width="100">신고자</th>
                            <th width="130">신고 시간</th>
                            <th width="80">타입</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <!-- if() {} -->
                        <tr align="center">
                            <td><input type="checkbox" id="checkBox"></td>
                            <td>1</td>
                            <td>김길동이</td>
                            <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
                            <td>욕설, 비방</td>
                            <td>호빵</td>
                            <td>2021/11/11 19:21</td>
                            <td>댓글</td>
                        </tr>

                            
<!-- 반복 예시 -->
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>김길동이</td>
    <td>ㅇㅇㅇㅇㅇㅇㅇㅇㅇ</td>
    <td>욕설, 비방</td>
    <td>호빵</td>
    <td>2021/11/11 19:21</td>
    <td>댓글</td>
</tr>

<!-- 반복 예시 끝-->
                                

                    </tbody>
                    </table>
                  
                    <!-- <div id="rightTop">
                      <a href="" class="btn btn-dark">삭제</a>
                      <a href="" class="btn btn-dark">확인</a>
                    </div> -->
                </div>
            </from>

                <div id="tableOut2">
                  <div id="pagebar" align="center">
                        <button>&lt;</button>   
                        <button>1</button>
                        <button>2</button>
                        <button>3</button>
                        <button>4</button>
                        <button>5</button>
                        <button>&gt;</button>
                  </div>
                </div>
                </div>
                
            </div>
      
      


        <footer>
            <div style="height:100px">
    
            </div>
        </footer>
    
    </div>



</body>
</html>