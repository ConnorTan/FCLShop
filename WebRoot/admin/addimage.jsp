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
<a href="main.html">首页</a>&nbsp;/&nbsp;添加图片
</div>
<div class="content3">
<div class="DaoHangTiao2"><span>添加图片</span></div>
<form action="" method="">
   <div class="TianJiaYongHu">
      <span>名字：</span><input type="text" name="" value="" class="MingZi"/>
      <span id="NeiRong">图片：</span><input type="file" name="" value="" class="TuPian"/>
      <input type="submit" value="提交" class="TiJiao3"/>
   </div>
</form>
</div>
</body>
</html>
