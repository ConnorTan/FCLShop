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
<a href="main.html">首页</a>&nbsp;/&nbsp;新闻列表
</div>
<div style="border:1px solid #90F; width:1120px;height:200px; margin:20px auto; position:relative;">
<div class="DaoHangTiao2"><span>新闻列表</span></div>
<ul class="imagelist_ul1">
   <li>名字</li>
   <li>图片</li>
   <li>操作</li>
   
   <li>头像</li>
   <li><img src="../images/小头像.jpg"/ style="width:50px;"></li>
   <li><a href="#">编辑</a>&nbsp;<a href="#">删除</a></li>

</ul>
<div class="FenYe">
<ul>
   <li><a href="#">首页</a></li>
   <li><a href="#">上页</a></li>
   <li><a href="#">下页</a></li>
   <li><a href="#">尾页</a></li>
</ul>
</div>
</div>
</body>
</html>
