<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<meta http-equiv="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">    
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
		body{
		height:auto;
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
		border-bottom:2px solid #f86b1d;
		height:40px;
		} 
		.detail{
		
		 margin-left:50px; 
		height:600px;
	
		}
 		.foot{
 		height:200px;
 		margin-top:0px;
 		
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
		height:500px;
		width:auto;
	
		
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
		background:gray;
		border:1px solid gray;
		}
		
		a{
		text-decoration:none;
		}
		.cart1{
		border-bottom:1px solid gray; 
		width:100%;
		height:auto;
		float:left;
		margin-left:0;
		}
		.order1{
		text-align:center;
		}
		.buy{
		display: inline-block; 
    	width: 178px;
    	height: 38px;
    	border: 1px solid #c40000;
   		margin-top:10px;
   		margin-left:-10px;
   	 	color: #c40000;
   		line-height: 38px;
   		text-align: center;
   	 	background-color: #ffeded;
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
    <iframe src="<c:url value='/order/body_1_1.jsp'/>" class="center_1"></iframe>
    </div>
    <div class="detail">
 		
  		<div class="order1">订单编号：${order.oid }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
  		 创建时间：<fmt:formatDate value="${order.ordertime }" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  		 订单总额：<font color="red" size="5">${order.total }元</font></div>
  		<c:forEach items="${requestScope.order.orderItemSet }" var="orderItem">
  		<div class="cart1">
  			 <div class="image"><img src="<c:url value='/${orderItem.goods.image }'/>"></div> 
  				<div class="describe"> 
  				
  				<h1>${orderItem.goods.gname }</h1>
  				<p>${orderItem.goods.introduction }</p>
  				
  				<div class="price_border"> 
  					<span class="price">总计：<em>${orderItem.subtotal }元</em></span>
				</div>
				<div class="count">
					数量：${orderItem.count }<br>
				</div>
				<div class="total">
					单价：<font color="red">${orderItem.goods.price }元</font>
				</div>
					<a class="buy" id="buy" href="<c:url value='/cartAction_payment?price=${orderItem.goods.price }'/>">付款</a>
				</div>
					
				</div>
				</div>
				</div>
		
			</c:forEach>
				
  			</div>
  			
    	
   
      <div class="foot">
    <iframe src="<c:url value='/menu/foot.jsp'/>" ></iframe>
 	 </div>  
  		
  		
  </body>
</html>
