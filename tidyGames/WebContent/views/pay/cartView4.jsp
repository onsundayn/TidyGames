<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
.cart-product-imitation {
  text-align: center;
  padding-top: 30px;
  height: 80px;
  width: 80px;
  background-color: #f8f8f9;
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
        
            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
            <div class="container">
                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="ibox">
                                <div class="ibox-title">
                                
                                    <h5 style="font-weight: bold;">장바구니</h5>
                                </div>
                                <div class="ibox-content">
                                    <div class="table-responsive">
                                        <table class="table shoping-cart-table">
                                            <tbody>
                                            <tr>
                                                <td width="90">
                                                    <div class="cart-product-imitation">
                                                    </div>
                                                </td>
                                                <td class="desc">
                                                    <h3>
                                                    <a href="#" class="text-navy">
                                                        BattleGround
                                                    </a>
                                                    </h3>
                                                    <p class="small">
                                                        PUBG: BATTLEGROUNDS는 배틀로얄 게임으로, 외딴 섬에서 총 100명의 플레이어가 다양한 무기와 전략을 이용하여 마지막 1명이 살아남는 순간까지 전투를 하게 됩니다
                                                    </p>
                                
                
                                                    <div class="m-t-sm"></div>
                                                        <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                                    </div>
                                                </td>
                
                                                <!-- 할인가격이면 이렇게 표시 -->
                                                <td>
                                                    $180,00
                                                    <s class="small text-muted">$230,00</s>
                                                </td>
                                                <td width="65">
                                                    <input type="text" class="form-control" placeholder="1">
                                                </td>
                                                <td>
                                                    <h4>
                                                        $180,00
                                                    </h4>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                
                                </div>
                                <div class="ibox-content">
                                    <div class="table-responsive">
                                            <table class="table shoping-cart-table">
                                            <tbody>
                                            <tr>
                                                <td width="90">
                                                    <div class="cart-product-imitation">
                                                    </div>
                                                </td>
                                                <td class="desc">
                                                    <h3>
                                                    <a href="#" class="text-navy">
                                                        BattleGround
                                                    </a>
                                                    </h3>
                                                    <p class="small">
                                                        PUBG: BATTLEGROUNDS는 배틀로얄 게임으로, 외딴 섬에서 총 100명의 플레이어가 다양한 무기와 전략을 이용하여 마지막 1명이 살아남는 순간까지 전투를 하게 됩니다
                                                    </p>
                                
                
                                                    <div class="m-t-sm"></div>
                                                        <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                                    </div>
                                                </td>
                
                                                <td>
                                                    $700,00
                                                </td>
                                                <td width="65">
                                                    <input type="text" class="form-control" placeholder="1">
                                                </td>
                                                <td>
                                                    <h4>
                                                        $180,00
                                                    </h4>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                
                                </div>
                        
                            </div>
                
                        </div>
                        <div class="col-md-3">
                            <div class="ibox">
                                <div class="ibox-title">
                                    <h5>결제예정금액</h5>
                                </div>
                                <div class="ibox-content">
                                    <span>
                                        Total
                                    </span>
                                    <h2 class="font-bold">
                                        $390,00
                                    </h2>
                
                                    <hr>
                                    
                                    <div class="m-t-sm">
                                        <div class="btn-group">
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-shopping-cart"></i> 주문하기</a>
                                        <a href="#" class="btn btn-white btn-sm"> 쇼핑계속하기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                
                            <div class="ibox">
                                <div class="ibox-title">
                                    <h5>Support</h5>
                                </div>
                                <div class="ibox-content text-center">
                                    <h3><i class="fa fa-phone"></i> TidyGames</h3>
                                    <span class="small">
                                        Please contact with us if you have any questions. We are avalible 24h.
                                    </span>
                                </div>
                            </div>
                
                
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>