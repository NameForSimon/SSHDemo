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
<div class="easyui-panel" title="用户注册" style="padding: 10px 150px;">
<form action="resignAction.action" method="post" style="padding:0 700px" name="resign">
账号名<div class="input_container">
<input name="username" class="easyui-textbox"	data-options="prompt:'请输入用户名',iconCls:'icon-man'">
</div>
密码<div class="input_container">
<input name="password" type="password"	class="easyui-textbox" data-options="prompt:'请输入密码',iconCls:'icon-lock'">
</div>
地址<div class="input_container">
<input name="address" type="text"	class="easyui-textbox" data-options="prompt:'请输入地址',iconCls:'icon-edit'">
</div>
电话号码<div class="input_container">
<input name="phone" type="text"	class="easyui-textbox" data-options="prompt:'请输入电话号码',iconCls:'icon-edit'">
</div>
<a href='javascript:document.resign.submit()' class="easyui-linkbutton" style="padding:2px">注册</a>
<a href='javascript:document.resign.reset()' class="easyui-linkbutton" style="padding:2px">重置</a>
<a id="exit" href="login.jsp" class="easyui-linkbutton" style="padding:2px">返回</a>
</form>
</div>
</body>
</html>