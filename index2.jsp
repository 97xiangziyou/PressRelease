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
<div
		style="float:right;line‐height:50px;margin‐right:10 px;font‐size: 9pt;">
		<span> 【 </span><a style="color:blue;"
			href="javascript:window.opener=null;window.open('',
'_self');window.close();"><span>
				关闭窗口 </span></a><span>】</span>
	</div>
	</div>
	<div class="ndetail">
		<div class="ntitle">${news.title}</div>
		<div class="nauthor">
			<div>
				来源: &nbsp;<strong>${news.cruser}</strong> &nbsp;&nbsp; 发布时间:&nbsp; <strong>
					
					${news.tjdate}
					 </strong>&nbsp;&nbsp; 访问量:&nbsp; <strong>[<span>${news.hitnum}</span>]
				</strong>
			</div>
		</div>
		<div class="nbody">
			<div id="vsb_content">${news.content}</div>
		</div>
	</div>
	<div class="nlist">
		<table id="newstable" width="100%">
			<tbody>
				<tr id="trpp">
					<td colspan="3" align="left"></td>
				</tr>
			</tbody>
		</table>
	</div>
    <div class="box png">
		
	
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