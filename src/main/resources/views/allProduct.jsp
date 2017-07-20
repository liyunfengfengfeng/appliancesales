<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>分页</title>
<script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../js/kkpager.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/kkpager_blue.css" />
</head>
<body>
<div style="width:800px;margin:0 auto;">
<div id="kkpager"></div>
</div>
<script type="text/javascript">
function getParameter(name) { 
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return unescape(r[2]); return null;
}

//init
$(function(){
	var totalPage = ${page.getTotalPage()};
	var totalRecords = ${page.getTotalRecord()};
	var pageNo = ${page.getPageNo()};
	if(!pageNo){
		pageNo = 1;
	}
	//生成分页
	//有些参数是可选的，比如lang，若不传有默认值
	kkpager.generPageHtml({
		pno : pageNo,
		//总页码
		total : totalPage,
		//总数据条数
		totalRecords : totalRecords,
		//链接前部
		hrefFormer : 'http://localhost:8080/appliancesales/category/queryAllProduct',
		//链接尾部
		hrefLatter : '',
		getLink : function(n){
			return this.hrefFormer + this.hrefLatter + "?pno="+n;
		}
		
	});
});
</script>
		<c:forEach items="${productsPage}" var="product">
            ${product.name}
    	</c:forEach>
</body>
</html>