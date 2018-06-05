<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>新闻阅读页面</title>
<meta charset="utf-8">
<script>var base="<%=basePath%>";</script>
<script src="./include/js/jquery.min.js"></script>
<script src="./include/js/jquery.easyui.min.js"></script>
<script src="./include/js/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet"
	href="./include/css/themes/default/easyui.css">
<link rel="stylesheet" href="./include/css/themes/icon.css">
<link rel="stylesheet" href="./include/css/bootstrap.min.css">
<link rel="stylesheet" href="./include/css/animate.css">
<link rel="stylesheet" href="./include/css/style.css">


</head>

<body class="style-2">
	
	<div style="top:0;float:right;">
		<a href="index.jsp" style="margin‐right:15px;">登录</a> <a href="#">新闻</a>
	</div>
	<div class="container">
	<div class="fh5co-form animate-box"">
	<div id="lnews" class="l‐wrap">
		<div>
			<div>
				<div class="l‐news">
					<div class="nheader">
						<table cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td><h3>通知新闻：</h3></td>
								</tr>
							</tbody>
						</table>
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
					<div id="pp" style="background:#efefef;"></div>
				</div>
			</div>
		</div>
		</div>
	</div>
	</div>
</body>
<script src="./include/js/cnmp.js"></script>
</html>
