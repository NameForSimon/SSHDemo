<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/icon.css" />
<script type="text/javascript" src="<%=basePath%>/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/easyui/jquery.easyui.min.js"></script>
</head>
<body>

	<form action="searchoneAction.action" method="post">
		<div class="easyui-panel" style="padding: 5px" width="3000px">
			欢迎你：
			<s:property value="#session.username" />
			<a id="mine" href="mine.jsp" class="easyui-linkbutton"
				data-options="menu:'#mm0',iconCls:'icon-man'">我的</a> <a
				id="announce" href="bookpublish.jsp" class="easyui-linkbutton"
				data-options="menu:'#mm1',iconCls:'icon-edit'">发布信息</a> <a
				id="changebook" href="listAction.action" class="easyui-linkbutton"
				data-options="menu:'#mm2',iconCls:'icon-large-chart'">换书栏</a> <a
				id="exit" href="login.jsp" class="easyui-linkbutton"
				data-options="menu:'#mm3',iconCls:'icon-back'">退出</a>
		</div>


		<div class="easyui-panel" style="padding: 200px 700px; border: none;">
			<div>
				<img src="book.png"
					style="width: 100px; height: 100px; padding: 0px 200px">
			</div>
			<input type="text" name="search" class="easyui-textbox"
				data-options="prompt:'请输入要交换的书名',iconCls:'icon-search'"
				style="width: 500px; height: 50px"> <input type="submit"
				value="搜索" style="padding: 14px" class="button">
		</div>
	</form>
	<style type="text/css">
body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 1em;
	vertical-align: middle;
	font-weight: normal;
	position: fixed;
}

.button {
	display: inline-block;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .3);
	-webkit-border-radius: .5em;
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
}

.button:hover {
	text-decoration: none;
}

.button:active {
	position: relative;
	top: 1px;
}
</style>
</body>
</html>