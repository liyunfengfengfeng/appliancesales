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

	<title>登录/注册</title>

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
    
    
    
    
    
    
   
    
    
    
    <script>
    	  <!-- 检查两次输入的密码是否一致 -->
          function validate() {
              var pwd1 = document.getElementById("password").value;
              var pwd2 = document.getElementById("confirmpassword").value;
		<!-- 对比两次输入的密码 -->
              if(pwd1 == pwd2) {
                  document.getElementById("warning").innerHTML="<font color='green'>两次密码相同</font>";
                  document.getElementById("_register").disabled = false;
              }
              else {
                  document.getElementById("warning").innerHTML="<font color='red'>两次密码不相同</font>";
                document.getElementById("_register").disabled = true;
              }
          }
          
          <!--检查邮箱格式-->
          function emailCheck () {
			var emailStr=document.all.register.email.value;
			var emailPat= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
			var matchArray=emailStr.match(emailPat);
			if (matchArray==null) {
			alert("非法的邮箱格式")
			document.getElementById("_register").disabled = true;
			
			}
			document.getElementById("_register").disabled = true;
			}
          
          
          
       <!--注册页对协议的判定-->
       function checkAgreement()
		{
		    if (document.getElementById("agree").checked == false)
			{
				alert("不同意协议不能注册");
				
				return;
			}else{
				var form1=document.getElementById("register");

	            form1.action="/appliancesales/register/userRegister";//设置提交路径
	            alert('注册成功');
				form1.submit();                            //提交
	            
	            
	            
	            
			}
				
			
		}   
		
      </script>
  
</head>

<body>
	<jsp:include page="top.jsp"/>
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////Account Page///////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="index.html">主页</a></li>
						<li><a href="account.html">登录/注册</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="heading">
						<h2>登录</h2>
					</div>
					<form name="login" id="login" method="post" action="/appliancesales/login/userLogin">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="用户名 :" name="name" id="login_name" required missingMessage="用户名必须填写">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="密码 :" name="password" id="login_password" required missingMessage="密码必须填写">
						</div>
						<button type="submit" class="btn btn-1" name="login" id="login">登录</button>
						<a href="#">忘记密码 ?</a>
					</form>
				</div>
				<div class="col-md-6">
					<div class="heading">
						<h2>新用户 ? 创建一个新的账号</h2>
					</div>
					<form name="register" id="register" method="post" action="">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="用户名 :" name="name" id="name" required missingMessage="用户名必须填写">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="电子邮箱 :" name="email" id="email" required missingMessage="邮箱必须填写" onblur="emailCheck()"    >
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" placeholder="手机 :" name="phone" id="phone" required missingMessage="手机号必须填写">
						</div>
						<div class="form-group">
							<input name="gender" id="male" value="male" type="radio"> 男 <input name="gender" id="femail" value="female" type="radio"> 女
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="密码 :" name="password" id="password" required missingMessage="密码必须填写">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="确认密码 :" name="confirmpassword" id="confirmpassword" required missingMessage="确认密码必须填写" onkeyup="validate()" ><span id="warning"></span>
						</div>
						<div class="form-group">
							<input name="agree" id="agree" type="checkbox"> 我同意相关协议
						</div>
						<button onclick="checkAgreement()" id="_register" class="btn btn-1">注册</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="bottom.jsp"/>
</body>

</html>