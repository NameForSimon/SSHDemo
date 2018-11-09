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
	<form action="userAction.action" name="Loginform" method="post" class="main_form">
		<div class="top">
			<h1 class="item"></h1>
		</div>
		<br> <br> <br> <br>
		<div class="img">
			<img src="246.png" width=300px heigh=300px>

		</div>
		<div style="padding: 10px 150px;border:none">
			<br> <br> <br> <br> <br> <a>账号</a>
			<div class="input_container">
				<input name="username" class="easyui-textbox"	data-options="prompt:'请输入用户名',iconCls:'icon-man'">
			</div>
			<br> <br> <a>密码</a>
			<div class="input_container">
				<input name="password" type="password"	class="easyui-textbox" data-options="prompt:'请输入密码',iconCls:'icon-lock'">
			</div>
			<br> <br> <input name="degree" type="radio" value="admin">管理员
			&nbsp &nbsp <input name="degree" type="radio" value="student">学生
			<br> <br> <a href='javascript:document.Loginform.submit()' class="easyui-linkbutton" style="padding:2px">确定</a> &nbsp &nbsp 
			<a href='javascript:document.Loginform.reset()' class="easyui-linkbutton" style="padding:2px">重置</a>&nbsp &nbsp <a href="resign.jsp"
				class="easyui-linkbutton" style="padding:2px">注册</a></div>
	</form>
	</div>
	<div class="background">
		<img src="background.jpg" width="100%" height="100%">
	</div>
	<style type="text/css">
.main_form {
	margin: 32px auto;
	width: 480px;
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