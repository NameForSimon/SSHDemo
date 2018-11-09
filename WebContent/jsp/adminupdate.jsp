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
<div class="easyui-panel" style="padding: 200px 300px; border: none;">
<form action="adminupdateAction.action" method="post" name="myForm" style="width:300px" >
管理员名称<input name="adminname" readonly="readonly" class="easyui-textbox" value="<s:property value="#session.adminname"/>" ></br>
新的密码<input name="adminpassword" type="password" class="easyui-textbox"></br>
公告内容<input name="adminpublish" type="text" class="easyui-textbox"></br>
<a href='javascript:document.myForm.submit()' class="easyui-linkbutton" style="padding:2px">确定</a>
<a href='javascript:document.myForm.reset()' class="easyui-linkbutton" style="padding:2px">重置</a>
</form>
</div>
</body>
</html>