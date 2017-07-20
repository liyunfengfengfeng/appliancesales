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
   <footer>
    <div class="container">
      <div class="wrap-footer">
        <div class="row">
          <div class="col-md-6 col-footer footer-1">
            <img src="../images/logofooter.png" />
            <p>这是一个家用电器商城，其他的不知道写什么了[]~(￣▽￣)~*</p>
          </div>
          <div class="col-md-6 col-footer footer-2">
            <div class="heading">
              <h4>联系我们</h4>
            </div>
            <ul>
              <li><span class="glyphicon glyphicon-home"></span>黑龙江省 哈尔滨市 香坊区三大动力路23号 哈尔滨理工大学东区</li>
              <li><span class="glyphicon glyphicon-earphone"></span>+86 13000000000</li>
              <li><span class="glyphicon glyphicon-envelope"></span>software@hrbust.edu.cn</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            Copyright &copy; 2017.Company name All rights reserved.
          </div>
        </div>
      </div>
    </div>
  </footer>
</body>

</html>
