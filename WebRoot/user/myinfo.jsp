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
		border-bottom:2px solid #579572;
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
		height:350px;
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
		border-top:2px solid #579572;
		}
		a{
		text-decoration:none;
		}
		.form{
		margin-top:2%;
		margin-left:40%;
		width:400px;
		
		
		}
		input{
		margin:10px 0 10px 0;
		width:200px;
		height:25px;
		border:1px solid #579572;
		border-radius:15px;
		outline:none;
		font-size:15px;
		padding-left:10px;
		}
		.input{
		float:left;
		}
		.submit{
		padding-left:0;
		margin-left:113px;
		align:center;
		width:80px;
		background:#579572;
		color:white;
		}
		.submit:hover{
		background:#20894d;
		cursor:pointer;
		}
		span{
		color:red;
		font-size:13px;
		}
		h3{
		margin-left:100px;
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
    <iframe src="<c:url value='/user/body_1_1.jsp'/>" class="center_1"></iframe>
    </div>
    <div class="detail">
    	
    	<form action="userAction_myInfo" method="post" class="form">
    		<h3>修改用户信息</h3>      <br>
    		<input type="hidden" name="uid" value="${requestScope.user.uid }">
    		<div class="input">用户名： <input type="text" name="username" value="${requestScope.user.username }"><span>${errors.username }</span></div>
    		<div class="input">密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" value="${requestScope.user.password }"><span>${errors.password }</span></div>
    	<div class="input">	邮&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type="text" name="email" value="${requestScope.user.email }"><span>${errors.email }</span></div>
    		<div class="input">电&nbsp;&nbsp;&nbsp;&nbsp;话：<input type="text" name="phonenumber" value="${requestScope.user.phonenumber }"><span>${errors.phonenumber }</span></div>
    	<div class="input">	<input type="submit" value="确认修改" class="submit" >&nbsp;<span>${msg }</span>  </div>
    	
    	</form>
    
 	</div>	
     <div class="foot">
    <iframe src="<c:url value='/menu/foot.jsp'/>" ></iframe>
    </div> 
  		
  		
  </body>
</html>
