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
        width:30%;
        /* margin:20px; */
        margin: 50px 20px 20px 20px;
        /* margin-left:80px; */
    }
    #midTop{
        width:25%;
        margin: 55px 20px 20px 20px;
    }
    #rightTop{
        margin: 55px 20px 20px 80px;
    }
    #leftTop span{
        font-size:30px;
        font-weight: bolder;
        color:black;
        margin: 0px 70px 0px 50px;
    }
    #table{
        margin:auto;
        width:1200px;
        /* background-color: gray; */
    }
    #table *{
        height:15px;
    }
    #table th{
        font-size:18px;
    }
    #btn{
        padding:0px;
        width:46px;
        height:24px;
        margin-left:3px;
    }
    #checkBox{
        width:20px;
        height:20px;
        margin-top:3px;
    }
    #memberList{
        color:orange;
    }
    tbody a{
        color:gray;
    }
    #table td{padding:4px;}
    #tableOut1{
        width:100%;
        height:95%;
    }
    #tableOut2{
        width:100%;
        height:5%;
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
            <div id="intro">회원 관리</div>
            <div id="line_3"></div>
            
      
    	    <div id="tableBox">
                <div id="tableTop">
                    <div id="leftTop">
                        <div>
                            <span>회원수 21명</span>
                        </div>
                    </div>
                    
                    <div id="midTop">
                        <div>
                            <a href="" class="btn btn-sm btn-dark">상세 조회</a>
                            <a href="" class="btn btn-sm btn-dark">회원 수정</a>
                            <a href="" class="btn btn-sm btn-dark">회원 삭제</a>
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
                            <th width="170">아이디</th>
                            <th width="100">이름</th>
                            <th width="150">닉네임</th>
                            <th width="150">이메일</th>
                            <th width="100">전화번호</th>
                            <th width="150">적립금</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <!-- if() {} -->
                        <tr align="center">
                            <td><input type="checkbox" id="checkBox"></td>
                            <td>1</td>
                            <td><a href="">userId</a></td>
                            <td>김이박</td>
                            <td>호빵</td>
                            <td>hobun@mail.com</td>
                            <td>01012345678</td>
                            <td>
                                3000P
                                <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
                            </td>
                        </tr>
<!-- 반복 예시 -->

<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>
<tr align="center">
    <td><input type="checkbox" id="checkBox"></td>
    <td>1</td>
    <td>userId</td>
    <td>김이박</td>
    <td>호빵</td>
    <td>hobun@mail.com</td>
    <td>01012345678</td>
    <td>
        3000P
        <a href="" id="btn" class="btn btn-sm btn-dark">변경</a>
    </td>
</tr>

<!-- 반복 예시 끝-->
                                

                    </tbody>
                  </table>
                </div>

                <div id="tableOut2">
                  <div id="pagebar" align="center">
                        <button>&lt;</button>   
                        <button>1</button>
                        <button>2</button>
                        <button>3</button>
                        <button>4</button>
                        <button>5</button>
                        <button>6</button>
                        <button>7</button>
                        <button>8</button>
                        <button>9</button>
                        <button>10</button>
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