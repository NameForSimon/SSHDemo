<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
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
<div class="easyui-panel" title="发布内容" style="padding: 10px 150px;">
<form action="publishAction.action" method="post" name="main_form" style="padding:0px 500px">
书籍类型<select name="about">
<option>青春</option>
<option>文学</option>
<option>艺术</option>
<option>动漫</option>
<option>旅游</option>
</select></br>
你的书籍<input type="text" name="title" class="easyui-textbox"></br>
你想换的书籍<input type="text" name="bookname" class="easyui-textbox"></br>
描述：</br><textarea rows="5" cols="20" name="news" class="easyui-textbox"></textarea></br>
交换书籍的详细地址<input type="text" name="address" class="easyui-textbox"></br>
联系电话<input type="text" name="phone" class="easyui-textbox"></br>
联系人<input type="text" name="studentname" readonly="readonly" value="<s:property value="#session.username"/>" class="easyui-textbox"></br>
<a href='javascript:document.main_form.submit()' class="easyui-linkbutton" style="padding:2px">发布</a>
<a href='javascript:document.main_form.reset()' class="easyui-linkbutton" style="padding:2px">重置</a>
<a href="home.jsp" class="easyui-linkbutton" >返回</a></form>
</div>
<style type="text/css">
.main_form {
	margin: 32px auto;
	width: 480px;
	padding:0px 0px 0px 150px;
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