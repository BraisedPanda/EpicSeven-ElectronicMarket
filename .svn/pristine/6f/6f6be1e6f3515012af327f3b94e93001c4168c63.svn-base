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
		height:40px;
		font-family:幼圆;
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
		background:#43b244;
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
		
		line-height:40px;
		
		
		position:absolute;
		left:1430px;
		margin-bottom:0px;  
		}
	</style>
  </head>
  
  <body>
    <div class="nav" id="yingxiong">
    	<h3>英雄</h3>
    	<ul>
  	 		<li><a href="<c:url value='/goodsAction_findGoodsById?gid=5'/>" target="_top">流星雅卡泰丝</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/goodsAction_findGoodsById?gid=7'/>" target="_top">科而布恩</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/goodsAction_findGoodsById?gid=9'/>" target="_top">罗菲</a></li>
    	</ul>
    	<a href="<c:url value='/goodsAction_findAllHeros?currentPage=1'/>" class="more" target="_top">查看更多>>></a>
    	
    </div>
  </body>
</html>
