<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="admin.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
    <div class="DaoHangTiao">
<a href="main.html">首页</a>&nbsp;/&nbsp;添加商品
</div>
<div class="content2">
<div class="DaoHangTiao2"><span>添加商品</span></div>
<form action="${pageContext.request.contextPath}/adminProduct_save.action" method="post" enctype="multipart/form-data">
   <div class="TianJiaYongHu">
      <span>名字：</span><input type="text" name="pname" value="" class="XingMing"/>
      <span>图片:</span><input type="file" name="upload" value="" class="ShangChuan"/>
      <span style="margin-left: -30px;">市场价格:</span><input type="text" name="market_price" value="" class="BianHao"/>
      <span>商品价格：</span><input type="text" name="shop_price" value="" class="ShiChangJia"/>
      <span>商品描述：</span><input type="text" name="pdesc" value="" class="ShangPinJia"/>
      <span style="margin-left: -30px;">是否热门：</span><select name="is_host" class="YanSe">
      	<option value="1">是</option>
      	<option value="0">否</option>
      </select>
      <input type="submit" value="提交" class="TiJiao2"/>
   </div>
</form>
</div>
  </body>
</html>
