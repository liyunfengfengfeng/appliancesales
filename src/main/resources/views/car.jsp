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

	<title>Cart</title>

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
	<!--///////////////////Cart Page//////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li><a href="cart.html">Cart</a></li>
					</ul>
				</div>
			</div>
			
			<c:forEach items="${products}" var="product">
			<div class="row">
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
							<img src="${product.icon}" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name">
								<h3><a href="product.html">${product.name}</a></h3>
							</div>
							<div class="info">
								<ul>
									<li>type: ${product.type}</li>
									<li>ID: ${product.id}</li>
								</ul>
							</div>
							<div class="price">${product.favorablePrice}<span>${product.originalPrice}</span></div>
							<label>Qty: </label> <input class="form-inline quantity" type="text" value="1"><a href="#" class="btn btn-2 ">Update</a>
							<hr>
							<a href="/appliancesales/product/removeProduct?id=${product.id}" class="btn btn-default pull-right">REMOVE</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			</c:forEach>
			
			
			
			
			<div class="row">
				<div class="pricedetails">
					<div class="col-md-4 col-md-offset-8">
						<table>
							<tr style="border-top: 1px solid #333">
								<td>
									<h5>TOTAL</h5>
								</td>
								<td>${total}</td>
							</tr>
						</table>
						<center><a href="/appliancesales/product/checkOut?total=${total}" class="btn btn-1">Checkout</a></center>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="bottom.jsp"/>
</body>

</html>