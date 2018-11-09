<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<form action="resignAdminAction.action" method="post" style="width:300px" name="resign">
账号名<div class="input_container">
<input name="adminname" class="easyui-textbox"	data-options="prompt:'请输入用户名',iconCls:'icon-man'">
</div>
密码<div class="input_container">
<input name="adminpassword" type="password"	class="easyui-textbox" data-options="prompt:'请输入密码',iconCls:'icon-lock'">
</div>
<a href='javascript:document.resign.submit()' class="easyui-linkbutton" style="padding:2px">注册</a>
<a href='javascript:document.resign.reset()' class="easyui-linkbutton" style="padding:2px">重置</a>
</form>
</div>
</body>
</html>