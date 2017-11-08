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
<a href="main.html">首页</a>&nbsp;/&nbsp;添加新闻
</div>
<div class="content3">
<div class="DaoHangTiao2"><span>添加新闻</span></div>
<form action="" method="">
   <div class="TianJiaYongHu">
      <span>标题：</span><input type="text" name="" value="" class="BiaoTi"/>
      <span id="NeiRong">内容：</span><input type="text" name="" value="" class="NeiRong"/>
      <!-- 日期交给数据库自动添加 -->
      <input type="submit" value="提交" class="TiJiao3"/>
   </div>
</form>
</div>
</body>
</html>
