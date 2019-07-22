<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		iframe{
		width:100%;
		
		border:none;
		height:100%;
		}
	
		
		.top_1{
		height:40px;
		border-bottom:1px solid gray;
		
		}
		.top_2{
		height:115px;
		
		}
		
		.body_1_1{
		width:100%;
		border-bottom:2px solid #43b244;
		height:40px;
		} 
		.detail{
		
		margin-left:50px; 
		height:600px;
		position:relative;
		float:left;
		}
 		.foot{
 		height:200px;
 		margin-top:0px;
 	 	float:left;  
 	 	width:100%;
 	 	border-top:2px solid #43b244;
 		}
		*{
		margin:0;
		padding:0;
		
		}
	
		.top1{
		position:relative;
		left:50px;
		top:2px;
		font-size:15px;
		
		}
		.detail{
		
		margin-top:10px;
		height:auto;
		width:auto;
		position:relative;
		
		}
		.image{
		margin-left:52px;
		margin-top:20px;
		float:left;
		background:blue;
		width:240px;
		height:300px;
		}
		.describe{
		margin-top:20px;
		float:left;
		margin-left:200px;
		}
		p{
		margin-top:15px;
		}
		.price_border{
		margin-top:15px;
		background:#fff5f5;
		width:300px;
		height:50px;
		position:relative;
		}
		.price{
		position:absolute;
		top:10px;
		font-size:25px;
		color:red;
		}
		.count{
		margin-top:25px;
		
		}
		.total{
		margin-top:25px;
		}
		.operation{
		margin-top:25px;
		}
		.buy,.cart{
		display: inline-block; 
    	width: 178px;
    	height: 38px;
    	border: 1px solid #c40000;
   	
   	 	color: #c40000;
   		 line-height: 38px;
   		 text-align: center;
   	 	background-color: #ffeded;
		}
		
		.cart{
		margin-left:20px;
		color:white;
		background:red;
		}
		
		ul{
		list-style:none;
		
		}
		ul>li{
		width:250px;
		float:left;
		display:inline;
		margin:0 20px 20px 16px;
		text-align:center;
		
		}
		img{
		width:160px;
		height:200px;
		}
		.show{
		 border:1px solid gray; 
		}
		.show:hover{
		 border:1px solid #43b244; 
		 color:#43b244;
		}
		.show_ul{
		margin-left:-10px;
		margin-top:10px;
		}
		a{
		color:black;
		text-decoration:none;
		}
		a:hover{
		color:#43b244;
		}
		.tt{
		
		margin-top:400px;
		width:100%;
		height:10px;
		}
		.page{
		margin:10px 20px 10px 20px;
		
		text-align:center;
		
		}
	</style>
  </head>
  
  <body>
  <div class="top_1">
    <iframe src="<c:url value='/menu/top_1.jsp'/>" class="top_1" ></iframe>
   </div>
    <div class="top_2">
    <iframe src="<c:url value='/menu/top_2.jsp'/>" class="top_2"></iframe>
    </div>
   
 	<div class="body_1_1">
    <iframe src="<c:url value='/goods/body_1_1.jsp'/>" class="center_1"></iframe>
    </div>
    <div class="detail">
    
 		<div class="top1">全部分类>>>${requestScope.goodsList[0].category.cname }分类>>>商品详情</div><br><br>
  		<ul>
  		<c:forEach items="${requestScope.goodsList }" var="goodsList">
  			<li class="show">
  				<a href="<c:url value='/goodsAction_findGoodsById?gid=${goodsList.gid }'/>">
  				<ul class="show_ul">
  					<li>${goodsList.gname }</li><br>
  					<li><img src="<c:url value='/${goodsList.image }'/>"></li><br>
  					<li><font color="red">￥${goodsList.price }</font></li>
  				</ul>
  				</a>
  			</li>
  		
  			
  		</c:forEach>
  		</ul>
  		
  		
  		
  	</div>
  	<div class="tt"></div>
  	<div class="page">
  		<a href="<c:url value='/goodsAction_findAllHeros?currentPage=1'/>" target="_top">首页</a>
  		&nbsp;&nbsp;&nbsp;
  		<c:if test="${pageBean.currentPage-1 >0 }">
  		<a href="<c:url value='/goodsAction_findAllHeros?currentPage=${pageBean.currentPage-1 }'/>" target="_top">上一页</a>
  		</c:if>
  			&nbsp;&nbsp;&nbsp;
  		第 ${pageBean.currentPage } 页/共 ${pageBean.totalPage } 页
  			&nbsp;&nbsp;&nbsp;
  		<c:if test="${pageBean.currentPage+1 <= pageBean.totalPage }">
  		<a href="<c:url value='/goodsAction_findAllHeros?currentPage=${pageBean.currentPage+1 }'/>" target="_top">下一页</a>
  		</c:if>
  		</div>
     <div class="foot">
    <iframe src="<c:url value='/menu/foot.jsp'/>" ></iframe>
    </div> 
  		
  		
  </body>
</html>
