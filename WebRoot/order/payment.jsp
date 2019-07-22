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
    
    <title>My JSP 'payment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
<style>
	*{
	padding:0;
	margin:0;
	}
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
		
 		.foot{
 		width:90%;
 		float:left;
 		height:200px;
 		margin-top:50px;
 		
 		}
	
	
		.top1{
		position:relative;
		left:50px;
		top:2px;
		font-size:15px;
		
		}	
	.left{
	
	margin-top:20px;
	margin-left:200px;
	}
	.pic{
	width:200px;
	height:200px;
	background:red;
	float:left;
	}
	.pic>img{
	width:200px;
	height:200px;
	}
	.font{
	margin-left:10px;
	margin-top:50px;
	float:left;
	
	}
	.right{
	
	float:right;
	margin-right:100px; 
	margin-top:50px;
	font-size:30px;
	}
	.ali{
	width:200px;
	height:60px;
	background:url("images/zhifubao.png") no-repeat;
	 background-size:100%; 
	 border:2px solid gray;
	}
	
	.wechat{

	width:200px;
	height:60px;
	background:url("images/weixinpay.png") no-repeat;
	background-size:90%; 
	border:2px solid gray;
	}
	input{
	float:left;
	margin-top:20px;
	}
	.choose{
	width:300px;
	margin-top:100px;
	margin-left:100px;
	
	}
	.top{
	width:80%;
	position:absolute;
	margin-left:250px;
	margin-top:-20px;
	}
	#payment{
	color:#f86b1d;
	}
</style>
	<script>
		function change1(){
			$(".image").attr("src","images/payment.png");
			$("#payment").text("支付宝");
		}function change2(){
			$(".image").attr("src","images/pyment2.png");
			$("#payment").text("微信支付");
		}
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
    <iframe src="<c:url value='/order/body_1_3.jsp'/>" class="center_1"></iframe>
    </div>
    <div class="choose">
    	<input type=button class="ali" onclick="change1();">
    	<input type="button" class="wechat" onclick="change2()">
    </div>
  	<div class="top">
  		<div class="left">
  			<div class="pic"><img src="images/payment.png" class="image"></div>
  			<div class="font">
  				<p>EPIC7商城-超级好玩的ARPG游戏</p>
  				<p>卖家昵称：红烧大熊猫</p>
  				<p id="payment">支付宝</p>
  			</div>
  		</div>
  		<div class="right"><font color="#f86b1d">总计：${price }元</font></div>
  	</div>
  	
     <div class="foot">
    <iframe src="<c:url value='/menu/foot.jsp'/>" ></iframe>
 	 </div>  
  </body>
</html>
