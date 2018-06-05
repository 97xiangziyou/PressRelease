<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>newsadd.html</title>

<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>include/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>include/css/themes/icon.css">

<script type="text/javascript" src="<%=basePath%>include/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>include/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath%>include/js/jquery.easyui.min.js"></script>
<script>var base = "<%=basePath%>";</script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>include/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>include/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>include/ueditor/lang/zh-cn/zh-cn.js"></script>




</head>
<body>
	<div class="easyui-panel" title="新闻添加" style="width:90%">
		<div style="padding:10px 60px 20px 60px;width:90%">
			<table cellpadding="5" style="width:90%">
				<tr>
					<td>新闻标题:</td>
					<td><input class="easyui-textbox" type="text" id="title"
						data-options="required:true" style="width:50%"></input></td>
				</tr>
				<tr>
					<td>新闻发布人:</td>
					<td><input class="easyui-textbox" type="text" id="cruser"
						data-options="required:true" style="width:50%"></input></td>
				</tr>
					<tr>
						<td style="vertical‐align: top;">新闻内容：</td>
						<td><script id="content" type="text/plain" style="width:100%;height:400px;"></script></td>
					</tr>
			</table>
			<div>
				<div style="text-align:center;padding:5px">
					<a id="savenews" href="javascript:void(0)"
						class="easyui-linkbutton" style="width:120px">保存</a>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var ue;
$(function(){
 ue = UE.getEditor('content');
 $("#title").textbox("setValue","${news.title}");
 ue.ready(function() {
 ue.setContent("");
 ue.execCommand('insertHtml', '${news.content}');
});
 $("#cruser").textbox("setValue","${news.cruser}");
$('#savenews').click(function(){//发布新闻前，要校验
var a=$("#title").textbox("getValue");
var b=ue.getContent();
var c=$("#cruser").textbox("getValue");
 if(a.length<=0){$.messager.alert("系统提示","必须填写新闻标题","warning");return;}
 if(b.length<=0){$.messager.alert("系统提示","必须填写新闻内容","warning");return;}
 if(c.length<=0){$.messager.alert("系统提示","必须填写发布人姓名或者发布机构名称","warning");return;}
 $.ajax({
 type: 'POST',
 url : "<%=basePath%>/news/saveEdit",
 data :
{"title":a,"content":b,"cruser":c,"id":${news.id}},
 success : function (res) {
 if(res.ok){
 parent.$.messager.alert("系统提示","你已修改新闻:"+$("#title").val(),"info");
 }else{
 parent.$.messager.alert("系统提示","修改失败！","error");
 }
 return false;
 },
 error : function(res)
{parent.$.messager.alert("系统提示","系统错误！","error");}
 });
 });

});
</script>
</html>
