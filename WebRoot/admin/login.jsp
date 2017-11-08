<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link href="${pageContext.request.contextPath }/admin/admin.css" rel="stylesheet" type="text/css">
</head>

<body class="login">
<div class="xt">
   <h3>后台管理系统</h3>
   <form action="${pageContext.request.contextPath }/adminUser_login.action" method="post">
   <div style="color:red">${Error }</div>
   <input type="text" name="username" class="adimin" placeholder="登录账号" />
   <input type="password" name="password"  class="password" placeholder="登录密码"/>
   <input type="submit" value="登录" class="dl"/>
   </form>
</div>
</body>
</html>
