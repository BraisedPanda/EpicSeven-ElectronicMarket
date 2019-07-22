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
		border-bottom:2px solid #806d9e;
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
		background:red;
		}
		.foot{
		border-top:2px solid #43b244;
		}
		a{
		text-decoration:none;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
		$(function(){
			$("input").bind("input propertychange",function(){
			var count1 = $("#count").val();
			var price = $(".price").children('em').text();
			var total = count1 * price;
			
			console.log(count1);
			console.log(price);
			console.log(total);
			$("font").html(total+'元');
			});
			$("#cart").mouseenter(function(){
				var gid1 = $("#gid").val();
				var count1 = $("#count").val();
				console.log(count1);
				console.log(gid1);
				$("#cart").attr("href","cartAction_add?gid="+gid1+"&count="+count1);
			});
			
			$("#buy").mouseenter(function(){
				var gid1 = $("#gid").val();
				var count1 = $("#count").val();
				console.log(count1);
				console.log(gid1);
				$("#buy").attr("href","cartAction_buy?gid="+gid1+"&count="+count1);
			});
			
		});
	</script>
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
 		<div class="top1">全部分类>>>${goods.category.cname }分类>>>商品详情</div>
  		
  		
  			<div class="image"><img src="<c:url value='/${goods.image }'/>"></div>
  			<div class="describe">
  				<input type="hidden" name="gid" value="${goods.gid }" id="gid">
  				<h1>${goods.gname }</h1>
  				<p>${goods.introduction }</p>
  				<div class="price_border"> 
  					<span class="price">￥<em>${goods.price }</em></span>
				</div>
				<div class="count">
					数量：<input type="text"  style="width:60px;height:30px" value="1" id="count"><br>
				</div>
				<div class="total">
					总价：<font color="red">${goods.price }</font>
				</div>
				<div class="operation">
					<a class="buy" id="buy" href="">立即购买</a>
					<a class="cart" href="" id="cart">添加到购物车</a>
				</div>
  			</div>
  		</div>
    </div>
     <div class="foot">
    <iframe src="<c:url value='/menu/foot.jsp'/>" ></iframe>
    </div> 
  		
  		
  </body>
</html>
