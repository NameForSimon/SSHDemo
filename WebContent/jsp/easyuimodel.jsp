<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/easyui/themes/icon.css"/>
    <script type="text/javascript" src="<%=basePath%>/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/easyui/jquery.easyui.min.js"></script>
    <style type="text/css">
        .main_form{
            margin:32px auto;
            width:480px;
        }
        .input_container{
            margin-bottom:32px;
        }
    </style>
  </head>
  <body>
    <form class="main_form">
        <div class="easyui-panel" title="用户注册" style="padding:30px 60px;">
            <div class="input_container">
                <input class="easyui-textbox" label="用户名：" labelPosition="top" data-options="prompt:'请输入用户名',iconCls:'icon-man'" style="width:100%;height:52px">
            </div>
            <div class="input_container">
                <input class="easyui-textbox" label="密码：" labelPosition="top" data-options="prompt:'请输入密码',iconCls:'icon-lock'" style="width:100%;height:52px">
            </div>
            <div class="input_container">
                <input class="easyui-textbox" label="邮箱：" labelPosition="top" data-options="prompt:'请输入邮箱',validType:'email'" style="width:100%;height:52px">
            </div>
            <div class="input_container">
                <input class="easyui-textbox" label="个人简介：" labelPosition="top" multiline="true" style="width:100%;height:120px">
            </div>
            <div>  
                <a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">注册</a>
            </div>
        </div>
    </form>
  </body>
</html>