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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	<div class="easyui-panel" style="padding: 200px 300px; border: none;">
		<form action="publishnewsAction.action" method="post" name="main_form"
			style="width: 300px">
			管理员名称<input type="text" name="adminname" class="easyui-textbox"
				value="<s:property value="#session.adminname"/>" readonly="readonly"></br>
			公告内容<input type="text" name="adminpublish" class="easyui-textbox"></br>
			<a href='javascript:document.main_form.submit()'
				class="easyui-linkbutton" style="padding: 2px">发布</a> <a
				href='javascript:document.main_form.reset()'
				class="easyui-linkbutton" style="padding: 2px">重置</a>
		</form>
	</div>
	<style type="text/css">
.main_form {
	margin: 32px auto;
	width: 480px;
	padding: 0px 0px 0px 150px;
}

.top {
	background-color: #ACD6FF;
	text-align: center;
}

.img {
	text-align: center;
}

.background {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: -1;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 1em;
	vertical-align: middle;
	font-weight: normal
}
</style>
</body>
</html>