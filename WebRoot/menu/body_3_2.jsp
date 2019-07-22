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
		.image{
		margin-left:100px;
		float:left;
		}
		.table{
		
		float:left; 
		margin-left:0;;
		}
		table>td>tr{
		text-aling:center;
		margin:center;
		}
		.show{
		width:160px;
		heigth:200px;
		transition:0.25s;
		}
		td{
		width:293.75px;
		align:center;
		text-align:center;
		}
		td{
		
		border-bottom:1px solid gray;
		border-right:1px solid gray;
		
		}
		a{
		text-decoration:none;
		}
		h4{
		color:#373834;
		}
		.font{
		color:#ea517f;
		}
		td:hover{
		border-right:1px solid #f8c387;
		border-bottom:1px solid #f8c387;
	}
		.show:hover{
		width:180px;
		height:224px;
		}
	</style>
  </head>
  
  <body>
    <div class="image"><img src="<c:url value='/shenqi/shenqi.jpg'/>"></div>
    <div class="table">
    	<table  width="1175px" height="300px">
    		<tr>
    			<td>
    			<a href="<c:url value='/goodsAction_findGoodsById?gid=f4b72f04bdef412c8cd44692e843e85a'/>" target="_top">
    			<h4>精灵气息</h4><br>
    			<img src="<c:url value='/shenqi/sq1.png'/>" class="show"><br>
    			<div class="font">￥ 30.00</div>
    			</a>
    			</td>
    			<td >
    			<a href="<c:url value='/goodsAction_findGoodsById?gid=de7fcdb5203c49df887254d8b61a497d'/>" target="_top">
    			<h4>救援者们的书像</h4><br>
    			<img src="<c:url value='/shenqi/sq4.png'/>" class="show"><br>
    			<div class="font">￥ 30.00</div>
    			</a>
    			</td>
    			<td >
    			<a href="<c:url value='/goodsAction_findGoodsById?gid=2e348e6338d54a7aa91b83d01b777453'/>" target="_top">
    			<h4>恶魔与天使</h4><br>
    			<img src="<c:url value='/shenqi/sq3.png'/>" class="show"><br>
    			<div class="font">￥ 15.00</div>
    			</a>
    			</td>
    			<td >
    			<a href="<c:url value='/goodsAction_findGoodsById?gid=d784a563c04b4edba8a6f82e475ca2cb'/>" target="_top">
    			<h4>孤注一掷</h4><br>
    			<img src="<c:url value='/shenqi/sq8.png'/>" class="show"><br>
    			<div class="font">￥ 30.00</div>
    			</a>
    			</td>
    		</tr>
    	</table>
    </div>
  </body>
</html>
