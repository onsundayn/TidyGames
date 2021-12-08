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
        margin:auto;
    }
    #outer>div{float:left;}
	#intro{
        font-size: 33px;
        font-weight: 900;
        color :white;
        margin: 30px 80px 0px 50px;
    }
    #line_1{
        width:100%;
        height:2px;
        background: rgba(255, 255, 255, 0.555);
    }
    #line_3{
        width:145px;
        height:3px;
        background: rgba(255, 255, 255, 0.555);
    }
    #box{
    	width:1000px;	
    	border:1px solid white;
   	}


</style>
</head>
<body style="background:#0e332c;">

	<%@ include file="../common/includebar.jsp"%>
    
    
    <div id="outer">
        <div id="line_1"></div>
        <div>
            <%@ include file="../common/adminSidebar.jsp" %>
        </div>

        <div id="box">
            <div id="intro">회원 관리</div>
            <div id="line_3" style="margin:5px 50px;"></div>
      
      
    	    <div id="no">
      
      
      
      
	        </div>
            
	    </div>
    </div>

   


</body>
</html>