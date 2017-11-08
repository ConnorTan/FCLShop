<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/admin.js"></script>
<rel="stylesheet" type="text/css">
<title>无标题文档</title>
</head>

<body style="background: #F2F9FD;">
<div id="left">
<div class="left1">
<h3>菜单列表</h3>
<div class="left2">
<h4 class="ul1">用户管理</h4>
<ul class="li1">
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/adduser.jsp">添加用户</a></li>
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/userlist.jsp">用户列表</a></li>
</ul>
<h4 class="ul2">商品管理</h4>
<ul class="li2">
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/addmerchandise.jsp">添加商品</a></li>
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/adminProduct_findAll.action?page=1">商品列表</a></li>
</ul>
<h4 class="ul3">轮播管理</h4>
<ul class="li3">
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/addimage.jsp">添加图片</a></li>
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/imagelist.jsp">轮播列表</a></li>
</ul>
<h4 class="ul4">新闻管理</h4>
<ul class="li4">
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/addnews.jsp">添加新闻</a></li>
   <li><a target="mainFrame" href="${pageContext.request.contextPath}/admin/newslist.jsp">新闻列表</a></li>
</ul>
</div>
</div>
</div>
</body>
</html>
