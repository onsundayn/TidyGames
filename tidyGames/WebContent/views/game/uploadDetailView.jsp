<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.TidyGames.game.model.vo.*, java.util.ArrayList"%>
<%
	Game g = (Game)request.getAttribute("g");
	ArrayList<Category> gcList = (ArrayList <Category>)request.getAttribute("gcList");
	ArrayList<Attachment3> list = (ArrayList<Attachment3>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
    .outer{
        width: 1200px;
        height:800px;
        display:flex;
        margin: auto;
        margin-top: px;
    }
    .title{
        color: white;
        font-size:25px;
    }
    .left-area{
        height: 700px;
        width: 700px;
    }
    
    #big{
        width:700px;
        height:300px;
        background: rgba(169, 169, 169, 0.178);
    }
    .img11 img{
        width:100%;
        height: 100%;
        object-fit: cover;
    }
    #small{
        background: rgba(169, 169, 169, 0.178);
        width:700px;
        height:120px;
    }
    #small img{
        width:140px;
        height:100px;
        margin:5px;
    }
    .right-area{
        width:500px;
        height:800px;
        margin-top: 57px;
    }
    #btn{
    margin-bottom: 53px;
    }
    #t-img{
        width:450px;
        height:200px;
        margin: auto;
    }
    .right-area div{
        color: white;
        margin-left: 15px;
    }
    #price{
        width: 200px;
        height:40px;
        margin-top: 30px;
    }
    #content{
        width:450px;
        height:110px;
    }
    .category-btn{
        background: rgb(102, 107, 112);
        text-decoration: none;
        font-size: 12px;
        color:white;
        padding: 5px;
        margin: 5px;
        border-radius: 5px;
    }
    .btn-area div{
        display:inline-block;
    }
    #heart{
        margin:30px 120px 10px 100px;
    }
    #rating{
        margin-left: 50px;
        margin-right: 30px;
    }
    #review-btn{
        background:lightgrey;
        text-decoration: none;
        color:black;
        padding:5px;
        border-radius: 5px;
    }
    #cart a, #heart a, #rating a{
        text-decoration:none;
        color:lightgrey;
    }
    #cart a:hover, #heart a:hover, #rating a:hover{
        text-decoration: none;
        color:orange;
    }
    #review-btn:hover{
       background-color:orange;
    }
</style>
</head>
<body style="background-color: #0e332c;">

   <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>

    
    <div class="outer">
        <div class="left-area">
        <% if(g.getConfirm().equals("Y")) { %>
        <h5><span class="badge bg-primary text-light">??????</span></h5>
        <%}else if(g.getConfirm().equals("N")) { %>
        <h5><span class="badge bg-secondary text-light">?????????</span></h5>
        <%}else if(g.getConfirm().equals("A")) { %>
        <h5><span class="badge bg-danger text-light">??????</span></h5>
        <%} %>
        
        
        
       
        
        <br>
        
        <input type="hidden" value="<%=g.getGameNo()%>">
       
            <div class="title">
                <p>
                    <%=g.getKorName() %> <br>
                    <%=g.getEngName() %>
                </p>
            </div>
            
            
            
            <div  class="img11" id="big" align="center">
            	<video src="<%=contextPath%>/<%=list.get(5).getFilePath() + list.get(5).getChangeName()%>" id="video" width="600" height="300" controls autoplay muted  onclick="chooseFile(1);"></video>

            </div>
            
            <div class="img11" id="small" align="center">
            	<% for(int i=1; i<list.size()-1; i++) {%>
                <img src="<%=contextPath%>/<%=list.get(i).getFilePath() + list.get(i).getChangeName()%>">
                <% } %>
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
        	
        	<div align="right" id="btn">
        	<% if(g.getConfirm().equals("Y")) { %>
        	<button onclick="n();" class="btn btn-primary" id="yn">????????????</button>
        	<%} else if(g.getConfirm().equals("N")) { %>
        	<button onclick="y();" class="btn btn-primary" id="y">??????</button>
        	<button onclick="a();" class="btn btn-secondary" id="a">??????</button>        	
        	<%} else if(g.getConfirm().equals("A")) { %>
        	<button onclick="n();" class="btn btn-info" id="an">????????????</button>
        	<%} %>
        	<button onclick="del();" class="btn btn-danger" id="del">??????</button>
        	</div>
               
            <div class="info-area">
            
                <div id="t-img">
                    <img src="<%=contextPath%>/<%=list.get(0).getFilePath() + list.get(0).getChangeName()%>">
                </div>

                <div id="price">
                    <span>????????? : <%=g.getPrice() %>???</span>
                </div>
                <div id="content">
                    <span><%=g.getGameIntro() %> </span>
                </div>
                <div id="release-date">
                    <p>
                        ????????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=g.getReleaseDate() %> <br>
                        ?????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=gcList.get(0).getCategoryName()%><br>
                        
                    </p>
                </div>
                <div id="tag">
                    ????????????&nbsp;&nbsp;&nbsp; 
                          <% for(int i=0; i<gcList.size(); i++) {%>
                            <a href="" class="category-btn"><%=gcList.get(i).getCategoryName()%></a>
                            <% } %>
                </div>
                
            </div>
            

        </div>
    </div>
    

   
   

    
    
   <script>
        	
        	
        	function del(){
        		
        		$.ajax({
        			url:"uploadupdate.ga",
        			data:{
        				confirm:"del",
        				gno:<%= g.getGameNo() %>
        			},
        			type:"post",
        			success:function(){
        				console.log("????????? ajax ?????? ??????");
        				

        				 Swal.fire({
        	                    title: '????????? ?????????????????????????',
        	                    
        	                    icon: 'warning',
        	                    showCancelButton: true,
        	                    confirmButtonColor: '#3085d6',
        	                    cancelButtonColor: '#d33',
        	                    confirmButtonText: '??????',
        	                    cancelButtonText: '??????'
        	                }).then((result) => {
        	                    if (result.isConfirmed) {
        	                    	swal.fire({
                				        icon: "success",
                				        title: "????????? ?????????????????????!"
                				}).then((??????) => {
                				    
                					document.location.href = "<%=request.getContextPath()%>/uplist.ga?cpage=1";
                				    
                				});
        	                    }
        	                });
        				
        			},
        			error:function(){
        				console.log("????????? ajax ?????? ??????");
        			}
        		})
        		
        	}
        	
        	function a(){
    			
    			$.ajax({
    				url:"uploadupdate.ga",
    				data:{
        				confirm:"A",
        				gno:<%= g.getGameNo() %>
        			},
    				success:function(){
    					console.log("????????? ajax ????????????!!!");
    					 Swal.fire({
     	                    title: '????????? ?????????????????????????',
     	                    
     	                    icon: 'warning',
     	                    showCancelButton: true,
     	                    confirmButtonColor: '#3085d6',
     	                    cancelButtonColor: '#d33',
     	                    confirmButtonText: '??????',
     	                    cancelButtonText: '??????'
     	                }).then((result) => {
     	                    if (result.isConfirmed) {
     	                    	swal.fire({
             				        icon: "success",
             				        title: "????????? ?????????????????????!"
             				}).then((??????) => {
             				    
             					document.location.reload();
             				    
             				});
     	                    }
     	                });



    				},
    				error:function(){
    					console.log("????????? ajax ????????????");
    				}
    			});
    		}
        	function n(){
    			
    			$.ajax({
    				url:"uploadupdate.ga",
    				data:{
        				confirm:"N",
        				gno:<%= g.getGameNo() %>
        			},
    				success:function(){
    					console.log("???????????? ajax ????????????!!!");
    					 Swal.fire({
      	                    title: '????????? ?????????????????????????',
      	                    
      	                    icon: 'warning',
      	                    showCancelButton: true,
      	                    confirmButtonColor: '#3085d6',
      	                    cancelButtonColor: '#d33',
      	                    confirmButtonText: '??????',
      	                    cancelButtonText: '??????'
      	                }).then((result) => {
      	                    if (result.isConfirmed) {
      	                    	swal.fire({
              				        icon: "success",
              				        title: "????????? ????????? ?????????????????????!"
              				}).then((??????) => {
              				    
              					document.location.reload();
              				    
              				});
      	                    }
      	                });



    				},
    				error:function(){
    					console.log("???????????? ajax ????????????");
    				}
    			});
    		}
        	
        	function y(){
    			
    			$.ajax({
    				url:"uploadupdate.ga",
    				data:{
        				confirm:"Y",
        				gno:<%= g.getGameNo() %>
        			},
    				success:function(){
    					console.log("????????? ajax ????????????!!!");
    					 Swal.fire({
      	                    title: '?????????????????????????',
      	                    
      	                    icon: 'warning',
      	                    showCancelButton: true,
      	                    confirmButtonColor: '#3085d6',
      	                    cancelButtonColor: '#d33',
      	                    confirmButtonText: '??????',
      	                    cancelButtonText: '??????'
      	                }).then((result) => {
      	                    if (result.isConfirmed) {
      	                    	swal.fire({
              				        icon: "success",
              				        title: "????????? ?????????????????????!"
              				}).then((??????) => {
              				    
              					document.location.reload();
              				    
              				});
      	                    }
      	                });



    				},
    				error:function(){
    					console.log("????????? ajax ????????????");
    				}
    			});
    		}
   </script>
    
    
   

</body>
</html>