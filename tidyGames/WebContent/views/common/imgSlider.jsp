<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style>

  /* Make the image fully responsive*/
  #demo{
	  width:1200px;
	  height:370px;
	  margin:auto;
  }
  .carousel-inner{
	  height:330px;
	  margin: auto;
  }
  </style>
</head>
<body>
<%@ include file="topbar.jsp" %>

<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner" align="center">
    <div class="carousel-item active">
		<a href="">
			<img src="<%=contextPath%>/resources/image/Dead-Cells.jpg" width="1000" height="350">
		</a>
    </div>
    <div class="carousel-item">
		<a href="">
			<img src="chicago.jpg" width="1000" height="500">
		</a>
    </div>
    <div class="carousel-item">
		<a href="">
			<img src="ny.jpg" alt="New York" width="1000" height="500">
		</a>
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev" style="width:7%;">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next" style="width:7%;">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

</body>
</html>
