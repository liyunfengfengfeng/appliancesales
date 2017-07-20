<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="">
  <meta name="author" content="">

  <title>家用电器商城</title>

  <!-- Bootstrap Core CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">

  <!-- Custom CSS -->
  <link rel="stylesheet" href="../css/style.css">


  <!-- Custom Fonts -->
  <link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="../fonts/font-slider.css" type="text/css">

  <!-- jQuery and Modernizr-->
  <script src="../js/jquery-2.1.1.js"></script>

  <!-- Core JavaScript Files -->
  <script src="../js/bootstrap.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
        <script src="../js/html5shiv.js"></script>
        <script src="../js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<jsp:include page="top.jsp"/>
  <!--//////////////////////////////////////////////////-->
  <!--///////////////////HomePage///////////////////////-->
  <!--//////////////////////////////////////////////////-->
  <div id="page-content" class="home-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <!-- Carousel -->
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators hidden-xs">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
              <div class="item active">
                <img src="../images/main-banner1-1903x600.jpg" alt="First slide">
                <!-- Static Header -->
                <div class="header-text hidden-xs">
                  <div class="col-md-12 text-center">
                  </div>
                </div>
                <!-- /header-text -->
              </div>
              <div class="item">
                <img src="../images/main-banner2-1903x600.jpg" alt="Second slide">
                <!-- Static Header -->
                <div class="header-text hidden-xs">
                  <div class="col-md-12 text-center">
                  </div>
                </div>
                <!-- /header-text -->
              </div>
              <div class="item">
                <img src="../images/main-banner3-1903x600.jpg" alt="Third slide">
                <!-- Static Header -->
                <div class="header-text hidden-xs">
                  <div class="col-md-12 text-center">
                  </div>
                </div>
                <!-- /header-text -->
              </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
          </div>
          <!-- /carousel -->
        </div>
      </div>
      <div class="row">
        <div class="banner">
          <div class="col-sm-4">
            <img src="../images/sub-banner1.png" />
          </div>
          <div class="col-sm-4">
            <img src="../images/sub-banner2.png" />
          </div>
          <div class="col-sm-4">
            <img src="../images/sub-banner3.png" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="heading">
            <h2>SPECIAL PRODUCTS</h2>
          </div>
          <div class="products">
          <c:forEach items="${special_products}" var="product">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="product">
                <div class="image"><a href="/appliancesales/product/queryProductDetail?id=${product.id}"><img src=${product.icon} /></a></div>
                <div class="buttons">
                  <a class="btn cart" href="/appliancesales/shoppingcar/addProductToCar?id=${product.id}"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                  <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                  <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                </div>
                <div class="caption">
                  <div class="name">
                    <h3><a href="/appliancesales/product/queryProductDetail?id=${product.id}">${product.name}</a></h3>
                  </div>
                  <div class="price">${product.favorablePrice}<span>${product.originalPrice}</span></div>
                  <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                </div>
              </div>
            </div>
    	</c:forEach>
   
   
          </div>
        </div>
      </div>
      <div class="row">
        <div class="banner">
          <div class="col-sm-6">
            <img src="../images/sub-banner4.jpg" />
          </div>
          <div class="col-sm-6">
            <img src="../images/sub-banner5.png" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="heading">
            <h2>FEATURED PRODUCTS</h2>
          </div>
          <div class="products">
          
          
          
          
          <c:forEach items="${featured_products}" var="product">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="product">
                <div class="image"><a href="/appliancesales/product/queryProductDetail?id=${product.id}"><img src="${product.icon}" /></a></div>
                <div class="buttons">
                  <a class="btn cart" href="/appliancesales/shoppingcar/addProductToCar?id=${product.id}"><span class="glyphicon glyphicon-shopping-cart"></span></a>
                  <a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
                  <a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
                </div>
                <div class="caption">
                  <div class="name">
                    <h3><a href="/appliancesales/product/queryProductDetail?id=${product.id}">${product.name}</a></h3>
                  </div>
                  <div class="price">${product.favorablePrice}<span>${product.originalPrice}</span></div>
                  <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                </div>
              </div>
            </div>
       
       </c:forEach>
       
       
       
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="bottom.jsp"/>
</body>

</html>