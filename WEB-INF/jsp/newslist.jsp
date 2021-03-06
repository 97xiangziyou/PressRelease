<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>新闻列表</title>

<meta name="keywords" content="keyword1,keyword2,keyword3">
<meta name="description" content="this is my page">
<meta charset="UTF-8">

<!--<link rel="stylesheet" type="text/css" href="<%=basePath%>styles.css">-->
<link rel="stylesheet"
	href="<%=basePath%>include/css/themes/default/easyui.css">
<!-- <link rel="stylesheet" type="text/css" href="../demo.css"> -->
<link rel="stylesheet" href="<%=basePath%>include/css/themes/icon.css">
<link rel="shortcut icon" href="<%=basePath%>include/img/k14.png">
<script>var base = "<%=basePath%>";</script>
<script src="<%=basePath%>include/js/jquery.min.js"></script>
<script src="<%=basePath%>include/js/jquery.easyui.min.js"></script>
<script src="<%=basePath%>include/js/easyui-lang-zh_CN.js"></script>
<script src="<%=basePath%>include/js/ljjtab.js"></script>
</head>

<body class="easyui-layout">
	<table id="dg" cellpadding="2"></table>
	<div id="tb" style="padding:5px;">
		<input id="s_name" name="s_name" class="easyui-textbox" style="width:400px"
			data-options="
			prompt: '请输入标题关键字',
			iconWidth: 22,
			icons: [{
				iconCls:'icon-reload',
				handler: function(e){
					$(e.data.target).textbox('clear');
				}
			}]
			">
		<a id="s_news" href="#" class="easyui-linkbutton"
			data-options="iconCls:'icon-search'">查询</a>
	</div>
</body>
<script>
 var s_name="",id="",title="";


function loadGrid(){
s_name=$("#s_name").val();
$("#dg").datagrid({
width:800,height:500,nowrap:false,
striped:true,border:true,collapsible:false,
url:"<%=basePath%>news/listNews",
queryParams:{"s_name":s_name},
pagination:true,
rownumbers:true,
fitColumns:true,pageSize:20,
loadMsg:'数据加载中...' ,
columns:[[
//标题过长时，显示部分文字和省略号。已给easyui
//中datagrid‐cell样式添加了属性 text‐overflow:ellipsis;
//鼠标停留时，显示全部文字
{title:'标题',
field:'title',width:200,formatter:
function(value,row,index){
return '<span title='+value+'>'+(value?value:'')+'</span>';
}},
{title:'发布时间',
field:'tjdate',width:100,formatter:
	function(value,row,index){
	return ((new Date(row.tjdate).Format("yyyy-MM-dd"))
);
	}},
{title:'操作',
field:'hitnum',width:100, formatter:
function(value,row,index){
var p="<a href=\"javascript:editNews('"+row.id+"')\">修改</a>";
p+=" | <a href=\"javascript:delNews('"+row.id+"','"+row.title+"')\">删除</a>";
return p;
}}
]],
toolbar:'#tb'});
}
function editNews(id){
parent.swNewTab("修改新闻信息","<%=basePath%>news/goEdit?id="+id);
}
function delNews(newsid,title0){
id=newsid;title=title0;
parent.$.messager.confirm("系统提示", "您确认要删除“"+title+"”吗？ ", function(r){
if (r){//r只能为确定为true和取消为false
$.ajax({
url:"<%=basePath%>news/doDel1",
data:{"id":id},
type:"post",
success: function(res){
if(res.delflag){
parent.$.messager.alert("系统提示","您已删除新闻： "+title,"info");
id="";s_name="";
loadGrid();
}else {parent.$.messager.alert("系统提示",res,"error");
}
return false;
},
error:function(res){
parent.$.messager.alert("系统提示","系统错误","error");
}
})
}
});
}
$(function(){
loadGrid();
$("#s_news").click(function(){
s_name=$("#s_name").val();   
loadGrid();
});

$("#tb").bind("keydown",function(e){
var theEvent = e || window.event; 
var code = theEvent.keyCode || theEvent.which|| theEvent.charCode;
if (code == 13) {
$("#s_news").click();
}
});
})
function doSearch(value){
			s_name=$("#s_name").val();
loadGrid();
		}
     </script>

</html>

