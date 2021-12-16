<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.util.ArrayList, com.TidyGames.pay.model.vo.*, com.TidyGames.game.model.vo.*"%>
    
 <% 
 
 ArrayList<Cart> cart = (ArrayList<Cart>)request.getAttribute("cart");
 Game g = (Game)session.getAttribute("g");
 
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 #outer{
        width:1500px;
        margin:auto;
    }
#outer>div{
    float:left;
} 
body{margin-top:20px;
    background:#eee;
}
h3 {
    font-size: 16px;
}
.text-navy {
    color: #1ab394;
}

.product-imitation.xl {
  padding: 120px 0;
}
.product-desc {
  padding: 20px;
  position: relative;
}
.ecommerce .tag-list {
  padding: 0;
}
.ecommerce .fa-star {
  color: #d1dade;
}
.ecommerce .fa-star.active {
  color: #f8ac59;
}
.ecommerce .note-editor {
  border: 1px solid #e7eaec;
}
table.shoping-cart-table {
  margin-bottom: 0;
}
table.shoping-cart-table tr td {
  border: none;
  text-align: right;
}
table.shoping-cart-table tr td.desc,
table.shoping-cart-table tr td:first-child {
  text-align: left;
}
table.shoping-cart-table tr td:last-child {
  width: 80px;
}
.ibox {
  clear: both;
  margin-bottom: 25px;
  margin-top: 0;
  padding: 0;
}
.ibox.collapsed .ibox-content {
  display: none;
}
.ibox:after,
.ibox:before {
  display: table;
}
.ibox-title {
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: #ffffff;
  border-color: #e7eaec;
  border-image: none;
  border-style: solid solid none;
  border-width: 3px 0 0;
  color: inherit;
  margin-bottom: 0;
  padding: 14px 15px 7px;
  min-height: 48px;
}
.ibox-content {
  background-color: #ffffff;
  color: inherit;
  padding: 15px 20px 20px 20px;
  border-color: #e7eaec;
  border-image: none;
  border-style: solid solid none;
  border-width: 1px 0;
}
.ibox-footer {
  color: inherit;
  border-top: 1px solid #e7eaec;
  font-size: 90%;
  background: #ffffff;
  padding: 10px 15px;
}

.container{
    width: 1200px;
    padding-top: 50px;
    text-align: center;
}

/* 장바구니에 아무것도 없을떄 */
.nocart{
    width: 1000px;
    margin: auto;
    
}
@import url(http://fonts.googleapis.com/css?family=Calibri:400,300,700);

body {
    background-color: #eee;
    font-family: 'Calibri', sans-serif !important
}

.mt-100 {
    margin-top: 10px
}

.card {
    margin-bottom: 30px;
    border: 0;
    -webkit-transition: all .3s ease;
    transition: all .3s ease;
    letter-spacing: .5px;
    border-radius: 8px;
    -webkit-box-shadow: 1px 5px 24px 0 rgba(68, 102, 242, .05);
    box-shadow: 1px 5px 24px 0 rgba(68, 102, 242, .05)
}

.card .card-header {
    background-color: #fff;
    border-bottom: none;
    padding: 24px;
    border-bottom: 1px solid #f6f7fb;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px
}

.card-header:first-child {
    border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0
}

.card .card-body {
    padding: 30px;
    background-color: transparent
}

.btn-primary,
.btn-primary.disabled,
.btn-primary:disabled {
    background-color: #4466f2 !important;
    border-color: #4466f2 !important
}

#cartbar{
    color:orange;
}




</style>
</head>
<body>

    <%@ include file="../common/topbar.jsp"%>
    <%@ include file="../common/navibar.jsp"%>
    <div id="outer">
         <div id="line_1"></div>
         <div>
            <%@ include file="../common/memberSidebar.jsp" %>
         </div>
         
         
         	<% if(cart.isEmpty()) { %>
			<!-- 장바구니가 비어있을때-->
         		<h3 align="center" style="color:white"> 장바구니가 비어있습니다.</h3>
         	<% }else {%>
            <!-- 장바구니에있을때 -->
            
            	<% for(Cart c : cart) { %>
           <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
           
         
          
            <div class="container">

                <form name="form1" id="form1" method="post" action=""> <!-- 결제하기 폼으로 -->
                
                
                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="row">
                        <div class="col-md-9" >
                            <div class="ibox" style="padding-left: 40px;" >
                                <div class="ibox-title" style="background: none;">
                                
                                    <h5 style="font-weight: bold; color:white">장바구니</h5>
                                </div>
                                
                                <div class="ibox-content" style="background: rgba(0, 0, 0, 0.445);">
                                    <div class="table-responsive" >
                                    
                                    
							
                                            <!-- 게임1개  -->
                                        <table class="table shoping-cart-table" >
                                            <tbody>
                                                    <tr>
                                                        <td width="100">
                                                            <div >
                                                                <img src="<%=contextPath%>/<%=c.getGameImg()%>" width="110px" height="140px">
                                                            </div>
                                                        </td>

                                                    
                                                        <td class="desc">
                                                            <h3>
                                                            <a href="<%=contextPath%>/detail.ga?gno=<%=g.getGameNo()%>" class="text-navy">
                                                               <%=c.getKorName()%><br>
       											               <%=c.getEngName()%>
                                                            </a>
                                                            </h3>
                                                            <p class="small" style="color:white;">
                                                                	   <span><%=c.getGameIntro() %> </span>
                                                            </p>
                                        
                        
                                                            <div class="m-t-sm"></div>
                                                                <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                                            </div>
                                                        </td>
                        
                                                        <!-- 할인가격이면 이렇게 표시 -->
                                                        <td style="color:white">
                                                            $180,00
                                                            <s class="small text-muted"><span>판매가 : <%=g.getPrice() %>원</span></s>
                                                        </td>
                                                        <td width="65">
                                                            <input type="text" class="form-control" placeholder="1" style="background: none;">
                                                        </td>
                                                        <td>
                                                            <h4 style="color:white">
                                                                $180,00총결제금액
                                                            </h4>
                                                        </td>
                                                    </tr>
                                            </tbody>
                                        </table>
                                    </div>
                
                                </div>

						 	<% } %>
	   		<% } %>
                        
                        
                            </div>
                
                        </div>
                        <div class="col-md-3">
                            <div class="ibox">
                                <div class="ibox-title"  style="border-radius: 5px;" >
                                    <h5>결제예정금액</h5>
                                </div>
                                <div class="ibox-content"  style="border-radius: 5px;">
                                    <span>
                                        Total
                                    </span>
                                    <h2 class="font-bold">
                                        $390,00
                                    </h2>
                
                                    <hr>
                                    
                                    <div class="m-t-sm">
                                        <div class="btn-group">
                                        <a href="<%=contextPath%>/order.pa" class="btn btn-primary btn-sm" style="margin-right: 10px;"><i class="fa fa-shopping-cart"></i> 주문하기</a>
                                        <a href="<%=contextPath%>"class="btn btn-secondary btn-sm" > 쇼핑계속하기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
              
                
                
                
                            <div class="ibox" style="padding-top: 30px;">
                                <div class="ibox-title" style="border-radius: 5px;">
                                    <h5>Support</h5>
                                </div>
                                <div class="ibox-content text-center" style="border-radius: 5px;">
                                    <h3><i class="fa fa-phone"></i> TidyGames</h3>
                                    <span class="small">
                                        Please contact with us if you have any questions. We are avalible 24h.
                                    </span>
                                </div>
                            </div>
                
                
                        </div>
                        
                        

                        <div style=" width:840px; height:100px; text-align: right;">
                            
                            <button class="btn btn-secondary" onclick="fnClear();">전체삭제</button>
                            
                            	 <script>
						        	 function fnClear() {
							    		var check = confirm("장바구니를 비우시겠습니까?");
							    		if(check) {
							    		location.href = "<%=contextPath %>/cartClear.pa";
							    		}
							    	}
					        	</script>
                        </div>
                    </div>
                    
                </div>
            </form>
                
          </div>
      
			
       	

        <br><br><br>
      




</body>
</html>