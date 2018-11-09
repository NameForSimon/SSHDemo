<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
</head>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/icon.css" />
<script type="text/javascript" src="<%=basePath%>/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/easyui/jquery.easyui.min.js"></script>
<body>
<table border="1" class="gridtable">
<tr>
<td align="center">序号</td>
<td align="center">想换的书籍</td>
<td align="center">你的书籍</td>
<td align="center">书籍详细信息</td>
<td align="center">书本类别</td>
<td align="center">交换地址</td>
<td align="center">联系电话</td>
<td align="center">联系人</td>
<td align="center">交换状态</td>
</tr>
<c:forEach items="${list}"  var="book">
<tr>
<td>${book.bid}</td>
<td>${book.bookname}</td>
<td>${book.title}</td>
<td>${book.news }</td>
<td>${book.about}</td>
<td>${book.bookaddress}</td>
<td>${book.bookphone}</td>
<td>${book.studentname}</td>
<td>${book.status}</td>
</tr>
</c:forEach>
</table>
<a href="home.jsp" class="easyui-linkbutton" data-options="menu:'#mm3',iconCls:'icon-back'">返回</a>
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