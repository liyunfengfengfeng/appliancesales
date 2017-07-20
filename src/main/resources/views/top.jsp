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
  <!--Top-->
  <nav id="top">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul class="top-link">
          <c:choose>
       <c:when test="${user.name!=null}">
              ${people }${user.name}  <li><a href="/appliancesales/login/signout">${loginout}</a></li>
       </c:when>
       <c:otherwise>
           <li><a href="/appliancesales/login/toLogin"><span class="glyphicon glyphicon-user"></span> 登录</a></li>
			<li><a href="/appliancesales/register/toRegister">注册</a></li>
			<li><a href="/appliancesales/contact/contactUs">联系我们</a></li>
       </c:otherwise>
</c:choose>
            
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!--Header-->
  <header class="container">
    <div class="row">
      <div class="col-md-4">
        <div id="logo"><img src="../images/logo.png" /></div>
      </div>
      <div class="col-md-4">
     
     
     
     
        <form class="form-search" method="post" action="/appliancesales/homepage/queryProductByCondition">
          <input type="text" name="name" class="input-medium search-query">
          <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>
        </form>
     
     
     
     
     
     
      </div>
      <div class="col-md-4">
        <div id="cart"><a class="btn btn-1" href="/appliancesales/shoppingcar/toCar"><span class="glyphicon glyphicon-shopping-cart"></span>购物车 : ${productCount} 件</a></div>
      </div>
    </div>
  </header>
  <!--Navigation-->
  <nav id="menu" class="navbar">
    <div class="container">
      <div class="navbar-header"><span id="heading" class="visible-xs">商品列表</span>
        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
      </div>
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li><a href="/appliancesales/homepage/index">主页</a></li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">制冷电器</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="category.html">家用冰箱</a></li>
                  <li><a href="category.html">家用冰柜</a></li>
                </ul>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">空调器</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="category.html">家用空调</a></li>
                  <li><a href="category.html">电扇</a></li>
                  <li><a href="category.html">换气扇</a></li>
                  <li><a href="category.html">冷热风器</a></li>
                  <li><a href="category.html">空气去湿器</a></li>
                </ul>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">清洁电器</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="category.html">洗衣机</a></li>
                  <li><a href="category.html">干衣机</a></li>
                  <li><a href="category.html">电熨斗</a></li>
                  <li><a href="category.html">吸尘器</a></li>
                </ul>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">厨房电器</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="category.html">微波炉</a></li>
                  <li><a href="category.html">电磁灶</a></li>
                  <li><a href="category.html">电烤箱</a></li>
                  <li><a href="category.html">电饭锅</a></li>
                  <li><a href="category.html">洗碟机</a></li>
                  <li><a href="category.html">电热水器</a></li>
                </ul>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">电暖器具</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="category.html">电热毯</a></li>
                  <li><a href="category.html">电热被</a></li>
                  <li><a href="category.html">电热服</a></li>
                  <li><a href="category.html">空气加热器</a></li>
                </ul>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">整容保健电器</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="category.html">电动剃须刀</a></li>
                  <li><a href="category.html">电吹风</a></li>
                  <li><a href="category.html">整发器</a></li>
                  <li><a href="category.html">超声波洗面器</a></li>
                  <li><a href="category.html">电动按摩器</a></li>
                  <li><a href="category.html">空间负离子发生器</a></li>
                </ul>
              </div>
            </div>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">声像电器</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="category.html">电视机</a></li>
                  <li><a href="category.html">收音机</a></li>
                  <li><a href="category.html">录音机</a></li>
                  <li><a href="category.html">录像机</a></li>
                  <li><a href="category.html">摄像机</a></li>
                  <li><a href="category.html">组合音响</a></li>
                </ul>
              </div>
            </div>
          </li>
          
          <!-- 查看所有商品 -->
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">所有商品</a>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <li><a href="/appliancesales/category/queryAllCategory">全部商品</a></li>
                  <li><a href="/appliancesales/category/queryAllProduct?pno=1">所有商品</a></li>
                </ul>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</body>
</html>