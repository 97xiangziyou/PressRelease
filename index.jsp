<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻发布系统后台登录 </title>
 <script>var base = "<%=basePath%>";</script>
 <link rel="shortcut icon" href="<%=basePath%>include/img/news.png">
<link href="<%=basePath%>include/css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div style="top:0;float:right;">
		  <a href="#" style="margin‐right:15px;">登录</a>    
		  <a href="news.jsp">新闻</a> 
	</div>
<script type="text/javascript"></script>
<form action="${pageContext.request.contextPath }/User/Login" method="post">
<div class="login">
    <div class="box png">
		<div class="logo png"></div>
		<div class="input">
			<div class="log">
				<div class="name">
					<label>用户名</label><input type="text" class="text" id="value_1" placeholder="用户名" name="uid" tabindex="1">
				</div>
				<div class="pwd">
					<label>密　码</label><input type="password" class="text" id="value_2" placeholder="密码" name="pwd" tabindex="2">
					<input type="submit" class="submit" tabindex="3" value="登录">
					<div class="check"></div>
				</div>
				
				<div class="tip"></div>
			</div>
		</div>
	</div>
    <div class="air-balloon ab-1 png"></div>
	<div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>
</form>
<script type="text/javascript" src="<%=basePath%>include/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>include/js/fun.base.js"></script>
<script type="text/javascript" src="<%=basePath%>include/js/script.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>