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
<a href="main.html">首页</a>&nbsp;/&nbsp;用户列表
</div>
<div style="border:1px solid #90F; width:1119px;height:280px; margin:20px auto; position:relative;">
<div class="DaoHangTiao2"><span>用户列表</span></div>
<ul class="userlist_ul1">
   <li>昵称</li>
   <li>手机号码</li>
   <li>操作</li>
   <li>王轩</li>
   <li>男</li>
   <li><a href="#">编辑</a>&nbsp;<a href="#">删除</a></li>
   <li>卢杰雄</li>
   <li>男</li>
   <li><a href="#">编辑</a>&nbsp;<a href="#">删除</a></li>
   <li>罗政政</li>
   <li>男</li>
   <li><a href="#">编辑</a>&nbsp;<a href="#">删除</a></li>
   <li>张展航</li>
   <li>男</li>
   <li><a href="#">编辑</a>&nbsp;<a href="#">删除</a></li>
   <li>钟春城</li>
   <li>男</li>
   <li><a href="#">编辑</a>&nbsp;<a href="#">删除</a></li>
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
