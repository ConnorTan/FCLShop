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
<link href="${pageContext.request.contextPath}/admin/admin.css" rel="stylesheet" type="text/css">
</head>

<frameset rows="10.6%,*" frameborder="yes" border="1" framespacing="0">
  <frame src="${pageContext.request.contextPath}/admin/header.jsp" name="leftFrame" scrolling="yes" noresize="noresize" id="headertFrame" />
  <frameset cols="15%,*" framespacing="0" frameborder="no" border="0">
    <frame src="${pageContext.request.contextPath}/admin/left.jsp" name="topFrame" scrolling="" noresize="noresize" id="leftFrame"/>
    <frame src="${pageContext.request.contextPath}/admin/main.jsp" name="mainFrame" id="mainFrame" />
  </frameset>
</frameset>
<noframes>
<body>
</body>
</noframes>
</html>
