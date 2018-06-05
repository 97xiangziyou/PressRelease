<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title>新闻发布系统管理系统后台</title>
    <script>var base = "<%=basePath%>";</script>
	<link rel="shortcut icon" href="<%=basePath%>include/img/news.png">
	<meta charset="utf-8" />
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <link rel="stylesheet" href="<%=basePath%>include/css/themes/default/easyui.css" />
	<link rel="stylesheet" href="<%=basePath%>include/css/themes/icon.css" />

    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
	<script type="text/javascript" src="<%=basePath%>include/js/jquery-1.5.1.min.js"></script>
	<script src="<%=basePath%>include/js/jquery.easyui.min.js"></script>
	<script  src="<%=basePath%>include/js/easyui-lang-zh_CN.js"></script>
	<script  src="<%=basePath%>include/js/ljjtab.js"></script>
  </head>
  <body class="easyui-layout">
      <div data-options="region:'north',border:false"
           style="background:#00CED1;padding:0 10px 0 10px;vertical-align: middle;">
            <img src="<%=basePath%>include/img/news.png" width="126" height="50" />
            <div style="float:right;line-height:50px;margin-right:10px;">
                  <a id="logout" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">退出</a>
   <script type="text/javascript">
   	$(function(){
   		$("#logout").click(function(){
   		top.location.href="<%=basePath%>User/doLogout";
   		});
   	});
   </script>
            </div>
            <div style="float:right;line-height:50px;margin-right:10px;">          |</div>
      </div>
      <div data-options="region:'west',split:true,title:'系统菜单'" style="width:180px;padding:10px;">
            <ul id="menutree" class="easyui-tree"></ul>
      </div>
      <div data-options="region:'south',border:false"
            style="height:30px;padding:5px;text-align:center;font-family: arial;
  color: #A0B1BB;">湖南人文科技学院_97xiangziyou.cn
      </div>
      <div data-options="region:'center'">
            <div id="tabs" class="easyui-tabs" fit="true" border="false">
            </div>
      </div>
</body>
<script type="text/javascript">
var opened_node;
$(function(){
$("#menutree").tree(
{
 	url : "<%=basePath%>menutree",
 	animate : true,
 	onClick : function(node) {
	if (!node.attributes) {
		if (!opened_node) { 
 			$("#menutree").tree('expand', node.target);
 			opened_node = node.target;
 		} else if (opened_node != node.target) {
 			$("#menutree").tree('collapse', opened_node);
 			$("#menutree").tree('expand', node.target);
 			opened_node = node.target;
 		}
 	} else {
 		swNewTab(node.text,"<%=basePath%>" +node.attributes.url);
 		
 		
 	}
 },
 onLoadSuccess : function(node, data) {
	 $("#menutree").tree('expandAll');
 	}
	});
});
$(function(){
 swNewTab('新闻管理',"<%=basePath%>news/goList");
}); 
</script>
  <!-- <body>
  <a id="logout" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">我要退出系统</a>
   <script type="text/javascript">
   	$(function(){
   		$("#logout").click(function(){
   		top.location.href="<%=basePath%>user/doLogout";
   		});
   	});
   </script>
  </body> -->
</html>
