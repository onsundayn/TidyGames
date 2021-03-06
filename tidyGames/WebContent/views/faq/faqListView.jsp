<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.TidyGames.faq.model.vo.Faq" %>
<%
	ArrayList<Faq> faqList = (ArrayList<Faq>)request.getAttribute("faqList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#faq{color:orange;}
	.navi{border-bottom:2px solid rgba(255, 255, 255, 0.333);}
	.outer{
		background-color: #0e332c;
		color:white;
		width:1200px;
		height:1000px;
		margin:auto;
		margin-top:50px;
	}
    /*
    #submitbtn{color:white; background:#0e332c; border:none;}
    .btn-category{
        background-color: lightgray;
        color: #0e332c;;
        border: none;
        height: 30px;
        border-radius: 10px;
        font-weight: bold;
    }
    */
    .q{
        width: 60%; 
        height: 40px; 
        font-size: 16px; 
        border: 1px solid gray;
        line-height: 30px;
        padding: 5px;
        padding-left: 15px;
        border-radius: 10px;
        cursor: pointer;
        font-family: Arial, Helvetica, sans-serif;
        background-color: rgba(0, 0, 0, 0.25);
    }
    .a{
        width: 60%; 
        font-size: 15px; 
        border: 1px solid gray;
        color: white;
        padding: 10px 15px 0px 15px;
        border-radius: 10px;
        cursor: pointer;
        font-family: Arial, Helvetica, sans-serif;
        display: none;
    }
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #0e332c;">

	<%@ include file="../common/topbar.jsp" %>
	<div class="navi"><%@ include file="../common/navibar.jsp" %></div>
    
    <div class="outer">

        <h2 style="float: left;">TIDY HELP |</h2>
        <h4 style="font-style: oblique; line-height: 2; float: left;">&nbsp;&nbsp;FAQ</h4>

      <% if(loginUser != null) { %>
        <h4 style="line-height: 2; color: gray; cursor: pointer;" onclick="insertQna(1);">&nbsp;&nbsp;1:1??????</h4>
      <% }else { %>
        <h4 style="line-height: 2; color: gray; cursor: pointer;" onclick="insertQna(2);">&nbsp;&nbsp;1:1??????</h4>
      <% } %>

        <br><br>

        <div id="deletebtn" align="right" style="width:1200px;">
            <!--????????????????????????????????? ??????-->
            <% if(loginUser != null && loginUser.getRoleId().equals("A")) { %>
                <a onclick="delectFaq();" class="btn btn-sm btn-danger">??????</a>
                <a onclick="updateFaq();" class="btn btn-sm btn-info">??????</a>
                <a href="<%= contextPath %>/faqEnrollForm.fa" class="btn btn-sm btn-info">?????????</a>
            <% } %>
            <!--
            <button type="button" class="btn-category" style="width: 250px;" onclick="category('join');">?????? ??? ????????? ??????</button>
            <button type="button" class="btn-category" style="width: 100px;" onclick="category('pay');">?????? ??????</button>
            <button type="button" class="btn-category" style="width: 100px;" onclick="category('etc');">??????</button>
            -->
        </div>

        <hr style="background-color: white; height: 3px;" >

        <% if(loginUser != null && loginUser.getRoleId().equals("A")) { %>
        <input type="checkbox" id="allCheck" onclick="checkAll(this);" style="width: 15px; height: 15px;">
        <br><br>
        <% } %>
        
        <% if(faqList.isEmpty()) { %>
            <div>????????? ???????????? ????????????.</div>
        <% } else {%>
            <form method="post" id="faqForm">
            <% for(Faq f : faqList) { %>
                <% if(loginUser != null && loginUser.getRoleId().equals("A")) { %>
                    <input type="checkbox" name="faqNos" class="faqNos" style="float: left; width: 15px; height: 15px;" value="<%= f.getFaqNo() %>">
                <% } %>
                <div class="q">
                    Q. <%= f.getFaqTitle() %>
                </div>
                <pre class="a">
A.
<%= f.getFaqContent() %>
                </pre>
            
            <% } %>
            </form>
        <% } %>
        <hr style="background-color: white; height: 3px;" >
        <br><br>

    </div>


    <script>
        $(function(){
            $(".q").click(function(){
                // $(this) : ?????? ????????? div?????? ?????????
                // ?????? ?????? ?????? ??????????????? pre????????? display ??????
                // $(this).next()
                // ????????? pre????????? ????????????, ??????????????? ?????? (if)

                const $pre = $(this).next(); // jQuery ???????????? ????????? ????????? ????????? ???????????? ???????????? $??? ??????

                if($pre.css("display") == "none"){
                    $(this).siblings("pre").slideUp();
                    $pre.slideDown();
                    // pre??? ???????????? div?????? ?????????,
                    // ?????? pre??? ?????? ?????? ?????????
                    // ?????? pre????????? ????????? ???
                } else{
                    $pre.slideUp();
                }
            })
        })
        
           function insertQna(num){
        
          if(num == 1){
             location.href="<%=contextPath%>/question.me";
          }else{
             alert("????????? ????????? ??? ?????? ???????????????.");
           }
          
  		}	   

        function checkAll(checkAll){
 
            const checkboxes 
                = document.getElementsByClassName('faqNos');
            
            for(var i=0; i<checkboxes.length; i++) {
                checkboxes[i].checked = checkAll.checked;
            }   
        }

        function delectFaq(){

            const checkboxes = document.getElementsByClassName('faqNos');
            var checkNum = 0;
            var faqForm = document.getElementById('faqForm');

            for(var i=0; i<checkboxes.length; i++) {
                if(checkboxes[i].checked == true) {
                    checkNum += 1;
                }
            }
            
            if(checkNum == 0) {
                alert("????????? ???????????? ??????????????????.");
            } else if(checkNum >= 1) {
                if(confirm("?????? ?????????????????????????")){
                    faqForm.action = "<%= contextPath %>/faqDelete.fa";
                    faqForm.submit();
                }
            }

        }

        function updateFaq(){

            const checkboxes = document.getElementsByClassName('faqNos');
            var checkNum = 0;
            var faqForm = document.getElementById('faqForm');
            
            for(var i=0; i<checkboxes.length; i++) {
                if(checkboxes[i].checked == true) {
                    checkNum += 1;
                }
            }

            if(checkNum == 0) {
                alert("????????? ???????????? ??????????????????.");
            } else if(checkNum > 1) {
                alert("??? ?????? ???????????? ????????? ??? ????????????.");
            } else if(checkNum == 1) {
                faqForm.action = "<%= contextPath %>/faqUpdateForm.fa";
                faqForm.submit();
            }
            

        }
    </script>

</body>
</html>