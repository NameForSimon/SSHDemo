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
<form action="updatebookAction.action" method="post" name="myForm">
书序列号<input type="text" name="bid" class="easyui-textbox"></br>
换物标题<input type="text" name="title" class="easyui-textbox"></br>
你想换的书籍<input type="text" name="bookname" class="easyui-textbox"></br>
描述：</br><textarea rows="5" cols="20" name="news" class="easyui-textbox"></textarea></br>
交换书籍的详细地址<input type="text" name="address" class="easyui-textbox"></br>
联系电话<input type="text" name="phone" class="easyui-textbox"></br>
交换状态<select name="status">
<option>发布成功</option>
<option>交换完成</option>
</select></br>
<a href='javascript:document.myForm.submit()' class="easyui-linkbutton" style="padding:2px">修改</a>
<a href='javascript:document.myForm.reset()' class="easyui-linkbutton" style="padding:2px">重置</a>
</form>
</body>
</html>