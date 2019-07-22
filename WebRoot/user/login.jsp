<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	 <link rel="stylesheet" type="text/css" href="css/regist.css"> 
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
		//验证用户名
		var usernameEle = document.getElementById("username");
		
	
		usernameEle.onblur = function(){
		 if(usernameEle.value.length <= 0){
         $(".tips1").html("*用户名不能为空");
         $("#username").css("border","2px solid red");
      	}
      	if(usernameEle.value.length > 0){
         $(".tips1").html("");
         $("#username").css("border","2px solid #869af9");
      	}
    	}
   });
	</script>
	<style>
		.bg_login{
		background:url("<c:url value='/images/bg_login.png'/>") no-repeat;
		width:1200px;
		height:899px;
		margin:-50px auto;
		}
		.form{
		position:absolute;
		top:0px;
		left:907px;
		background:none;
		}
		a{
		text-decoration:none;
		
		height:50px;
		padding:10px 10px;
		margin:10px auto;
		border:2px solid #f19790;
		background:none;
		text-align:center;
		width:250px;
		color:white;
		outline:none;
		border-radius:20px;
		transition:0.25s;
		font-size:20px;
		}
		a:hover{
		background:#f19790;
		}
	</style>
  </head>
  
  <body id="body1">
  <div class="bg_login">
    <form action="<c:url value='userAction_login'/>" method="post" class="form" id="form">
    	<h1>登&nbsp;&nbsp;录</h1>
    	<p class="tips1" id="tips1"></p>
    	<p><font color="red">${error }</font></p>
    	<input type="text" name="username" placeholder="用户名" class="input" id="username"><br>
    	<p class="tips2" id="tips2"></p>
    	<input type="password" name="password" placeholder="密码" class="input" id="password"><br>
    	
    	
    	<button type="submit"   class="submit" id="submit" >登录</button><br><br>
    	<a href="<c:url value='/user/regist.jsp'/>">注册</a>
    </form>
    </div>
  </body>
</html>
