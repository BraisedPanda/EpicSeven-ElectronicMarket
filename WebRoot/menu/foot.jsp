<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'foot.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
	 *{
	margin:0;
	padding:0;
	font-size:14px;
	color:#1e131d;
	} 
	.foot{
	position:absolute;
	float:left;
	top:0px;
	margin-left:40%;
	margin-top:40px;
	}
	ul{
	list-style:none;
	float:left;
	
	}
	ul>li{
	float:left;
	}
	ul>li:hover{
	cursor:pointer;
	}
	.p1{
	margin-left:-13%;
	}
	.p2{
	margin-left:-2%;
	}
</style>
  </head>
  
  <body>
   <div class="foot">
   		<ul>
   			<li>关于我们&nbsp;&nbsp;|&nbsp;&nbsp;</li>
   			<li>联系我们&nbsp;&nbsp;|&nbsp;&nbsp;</li>
   			<li>加入我们&nbsp;&nbsp;|&nbsp;&nbsp;</li>
   			<li>友情链接&nbsp;&nbsp;</li>
   		</ul>
   		<br><br>
   		<p class="p1">CopyRight &copy 2019 老菊花科技有限公司 All Rights Reserved</p>
   		<br>
   		<p class="p2">参考网站地址：https://www.ygege.com.cn</p>
   		
   </div>
  </body>
</html>
