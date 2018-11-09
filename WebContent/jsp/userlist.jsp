<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div style="padding: 100px 600px;">
<table border="1" class="gridtable">
<tr>
<td align="center">用户序号</td>
<td align="center">用户名称</td>
<td align="center">用户密码</td>
<td align="center">用户地址</td>
<td align="center">用户号码</td>
</tr>
<c:forEach items="${userlist}"  var="user">
<tr>
<td>${user.uid}</td>
<td>${user.username}</td>
<td>${user.password}</td>
<td>${user.address}</td>
<td>${user.phone}</td>
</tr>
</c:forEach>
</table>
</div>
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>
</body>
</html>