<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/icon.css" />
<script type="text/javascript" src="<%=basePath%>/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function(){
var treeData=[{
text:"账号信息",
state:"open",
iconCls:"icon-menu",
children:[{
text:"修改账号信息",
iconCls:"icon-goods",
attributes:{
url:"updateuser.jsp"
}
}]
},{
text:"有关发布信息",
state:"open",
iconCls:"icon-pencil",
children:[{
text:"查看相关发布信息",
iconCls:"icon-instore",
attributes:{
url:"userbookAction.action"
}
},{
text:"删除相关发布信息",
iconCls:"icon-outstore",
attributes:{
url:"deletebook.jsp"
}
},{
text:"修改相关发布信息",
iconCls:"icon-zoom",
attributes:{
url:"updatebook.jsp"
}
}]
}];
//实例化树
$("#tree").tree({
data:treeData,
lines:true,
onClick:function(node){
if(node.attributes){
openTab(node.text,node.attributes.url);
}
}
});

function openTab(text,url){
if($("#tabs").tabs('exists',text)){
$("#tabs").tabs('select',text);
}else{
var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%;' src="+url+"></iframe>";
$("#tabs").tabs('add',{
title:text,
closable:true,
content:content	
});	
}
}
});
</script>
</head>
<body>
<div class="easyui-layout" style="width:1000px;height:800px;margin:auto">
<div data-options="region:'north'" style="height:50px">
<a href="home.jsp" class="easyui-linkbutton" data-options="menu:'#mm3',iconCls:'icon-back'">返回</a></div>
<div data-options="region:'south',split:true" style="height:50px;">

</div>
<div data-options="region:'east',split:true" title="East" style="width:100px;">

</div>
<div data-options="region:'west',split:true" title="我的" style="width:150px;">
<div id="tree"></div>
</div>
<div data-options="region:'center',title:'主页'">
<div class="easyui-tabs" fit="true" border="false" id="tabs" >

</div>
</div>
</div>
</body>
</html>