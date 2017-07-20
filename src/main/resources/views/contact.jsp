<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

  <title>Mobile Shop</title>

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
  <!--///////////////////Contact Page///////////////////-->
  <!--//////////////////////////////////////////////////-->
  <div id="page-content" class="single-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="contact.html">Contact</a></li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="heading">
            <h1>联系我们</h1>
          </div>
        </div>
        <div class="col-md-6" style="margin-bottom: 30px;">
          <form name="form1" id="ff" method="post" action="/appliancesales/contact/sendMessage">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="你的名字" name="name" id="name" required data-validation-required-message="Please enter your name.">
            </div>
            <div class="form-group">
              <input type="email" class="form-control" placeholder="你的邮箱" name="email" id="email" required data-validation-required-message="Please enter your email address.">
            </div>
            <div class="form-group">
              <input type="tel" class="form-control" placeholder="你的电话" name="phone" id="phone" required data-validation-required-message="Please enter your phone number.">
            </div>
            <div class="form-group">
              <textarea class="form-control" placeholder="你的反馈" name="message" id="message" required data-validation-required-message="Please enter a message."></textarea>
            </div>
            <button type="submit" class="btn btn-1">发送消息</button>
          </form>
        </div>
        <div class="col-md-6">
          <p><span class="glyphicon glyphicon-home"></span> 哈尔滨理工大学软件学院</p>
          <p><span class="glyphicon glyphicon-earphone"></span> +130 3006 6787 , +187 4604 6951</p>
          <p><span class="glyphicon glyphicon-envelope"></span> 2464712160@qq.com</p>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3164.289259162295!2d-120.7989351!3d37.5246781!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8091042b3386acd7%3A0x3b4a4cedc60363dd!2sMain+St%2C+Denair%2C+CA+95316%2C+Hoa+K%E1%BB%B3!5e0!3m2!1svi!2s!4v1434016649434"
            width="95%" height="230" frameborder="0" style="border:0"></iframe>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="bottom.jsp"/>
</body>

</html>