<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
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
		font-size:13px;
		
		font-family:幼圆;
		width:auto;
		
		}
		body{
		
		height:40px;
		
		}
		ul{
		float:left;
		margin-left:400px;
		list-style:none;
		
		
		}
		ul>li{
		
		float:left;
		line-height:40px;
		
		}
		h3{
		position:absolute;
		font-size:14px;
		margin:0 0 0 100px;
		background:#f86b1d;
		width:240px;
		height:40px;
		text-align:center;
		color:white;
		line-height:40px;
	
		}
		a{
		text-decoration:none;
		color:black;
		
		}
		a:hover{
		color:#f9c116;
		}
		.more{
		width:110px;
		font-size:22px;
		line-height:22px;  
		background:#f86b1d;
		color:white;
		position:absolute;
		left:1350px;
		top:15px;
		text-align:center;
		}
	</style>
  </head>
  
  <body>
    <div class="nav" id="yingxiong">
    	<h3>我的订单</h3>
    	<ul>
  	 		<li><a href="<c:url value='/menu/main.jsp'/>" target="_top">首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/goodsAction_random'/>" target="_top">热门商品</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/goodsAction_random'/>" target="_top">猜你喜欢</a></li>
    	</ul>
    	
    	
    </div>
  </body>
</html>
