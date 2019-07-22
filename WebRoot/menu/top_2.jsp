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
		}
		.left{
			position:absolute;
			margin:30px 0 0 120px;
		}
		.center{
		margin:40px 0 0 420px;
		position:absolute;
		}
		.right{
		margin:40px 0 0 1120px;
		position:absolute;
		}
		.sousuo{
		width:500px;
		height:40px;
		outline:none;
		border:0.5px solid #43b244;
		font-size:17px;
		line-height:.2rem;
		padding-left:40px;
		background:url(<c:url value='images/sousuo.png'/>) no-repeat;
		background-size:6%;
		background-position:4px 5px;
		}
		.submit{
		height:42px;
		width:70px;
		background:#43b244;
		color:white;
		border:none;
		outline:none;
		cursor:pointer;
		}
		input{
		margin:-3px;
		}
		.mycart{
		background:url(<c:url value='/images/mycart.png'/>) no-repeat;
		background-size:23%;
		background-position:2px 4px;
		width:130px;
		height:40px;
		border:1px solid #43b244;
		padding-left:13px;
		text-align:center;
		line-height:40px;
		border-radius:20px;
		color:gray;
		}
		a{
		text-decoration:none;
		}
		
	</style>
  </head>
  
  <body>
  	
    <div class="left"><a href="<c:url value='/menu/main.jsp'/>" target="_top"><img src="<c:url value='/images/logo1.png'/>"></a></div>
   <div class="center">
    	
    	<form action="<c:url value='/goodsAction_findGoods'/>" method="post" target="_top">
    	<!-- <input type="hidden" name="currentpage" value="1"> -->
    	<input type="text" name="goodsname" class="sousuo" placeholder="搜索商品">
    	<input type="submit" value="搜索"  class="submit">
    	</form>
    
    </div>
    <div class="right">
    <a href="<c:url value='/cart/detail.jsp'/>" target="_top"" ><div class="mycart">我的购物车</div></a>
    <div class="count"></div>
    </div>
  
  </body>
</html>
