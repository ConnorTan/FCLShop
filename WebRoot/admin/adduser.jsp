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
<link href="admin.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="DaoHangTiao">
<a href="main.html">首页</a>&nbsp;/&nbsp;添加用户
</div>
<div class="content">
<div class="DaoHangTiao2"><span>添加用户</span></div>
<form action="" method="">
   <div class="TianJiaYongHu">
      <span>昵称：</span><input type="text" name="" value="" class="NiCheng"/>
      <span>性别：</span><input type="text" name="" value="" class="XingBei"/>
      <span>密码:</span><input type="password" name="" value="" class="MiMa1"/>
      <span>确认密码：</span><input type="password" name="" value="" class="MiMa2"/>
      <input type="submit" value="提交" class="TiJiao"/>
   </div>
</form>
</div>
</body>
</html>
