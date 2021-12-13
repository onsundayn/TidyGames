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
        width:60%;
        margin:20px;
        margin:50px 20px 20px 20px;
       /* margin-left:80px; */
    }
    #rightTop{
        margin: 60px 0px 10px 45px;
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
    #table td{padding:4px;}
    #tableOut1{
        width:100%;
        height:93%;
    }
    #tableOut2{
        width:100%;
        height:7%;
    }
    .btn{
        margin:0px;
        padding:0px;
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
                            <span>1:1 문의 내역 조회</span>
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
                            <button class="btn btn-sm btn-dark" onclick="">조회</button>
                        </div>
                    </div>
                <div id="tableOut1">
                <table id="table" class="table table-hover">
                    <thead>
                        <tr align="center">
                            <!-- <th width="50"> </th> -->
                            <th width="100">No.</th>
                            <th width="150">아이디</th>
                            <th width="150">닉네임</th>
                            <th>문의글</th>
                            <th width="180">등록일</th>
                            <!-- 트리거 (문의글에 답변을 달아서 insert가 생기면 답변여부가 자동으로 Y가 되게 설정하기) -->
                            <th width="180">답변 여부</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <!-- if() {} -->
                        <tr align="center">
                            <td>1</td>
                            <td>namesname</td>
                            <td>이르미</td>
                            <td>탈퇴 후 바로 재가입할 수 있나요?</td>
                            <td>2021/12/12 03:39</td>
                            <!-- ajax -->
                            <td>
                                <!-- if -->
                                <a href="" class="btn btn-sm btn-primary">미답변</a>
                                <!-- 답변완료 시  -->
                                <!-- <a href="" class="btn btn-sm btn-secondary">답변완료</a> -->
                            </td>
                        </tr>
              
                </div>
<!-- 반복 예시 -->
<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>
<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
</tr>

<tr align="center">
    <td>1</td>
    <td>namesname</td>
    <td>이르미</td>
    <td>탈퇴 후 바로 재가입할 수 있나요?</td>
    <td>2021/12/12 03:39</td>
    <!-- ajax -->
    <td>
        <a href="" class="btn btn-sm btn-secondary">답변완료</a>
    </td>
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