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
		body{
		height:40px;
		width:1200px;
		overflow: hidden;
		}
		
		.ul2{
		top:-7px;
		list-style:none;
		float:right;
		position:absolute;
		right:30px;
		}
		.ul2>li{
		float:left;
		
		}
		
		.ul1{
		top:-7px;
		list-style:none;
		float:left;
		position:absolute;
		left:20px;
	
		}
		a{
		text-decoration:none;
		color:black;
		
		}
		a:hover{
		color:#f9c116;
		}
	</style>
  </head>
  
  <body>
    
    <div class="hav">
    <ul class="ul1">
    	<li class="title">欢迎来到《第七史诗》商城</li>
    </ul>
    	<ul class="ul2">
    		
    	<c:choose>
    		<c:when test="${empty sessionScope.user }">
    		<li><a href="<c:url value='/user/login.jsp'/>" target="_top">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/user/regist.jsp'/>" target="_top">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
    		</c:when>
    		
    		<c:otherwise>
    		<li><font color="#619ac3">您好，${sessionScope.user.username }</font>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/userAction_quit'/>" target="_top">退出</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/userAction_findUser'/>" target="_top">用户中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/cart/detail.jsp'/>" target="_top">我的购物车</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    		<li><a href="<c:url value='/orderAction_myOrder'/>" target="_top">我的订单</a></li>
    		</c:otherwise>
    		
    	</c:choose>
    	
    	</ul>
    </div>
  </body>
</html>
