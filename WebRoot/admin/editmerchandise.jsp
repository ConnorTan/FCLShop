<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${pageContext.request.contextPath}/admin/admin.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
		<div class="DaoHangTiao">
		<a href="main.html">首页</a>&nbsp;/&nbsp;编辑商品
		</div>
		<div class="content2">
		<div class="DaoHangTiao2"><span>编辑商品</span></div>
		<form action="${pageContext.request.contextPath}/adminProduct_update.action" method="post" enctype="multipart/form-data">
		   	<input type="hidden" name="pid" value="<s:property value="model.pid"/>">
		   <div class="TianJiaYongHu">
		      <span>名字：</span><input type="text" name="pname" value="<s:property value="model.pname"/>" class="XingMing"/>
		      <span>图片:</span><input type="file" name="upload" value="" class="ShangChuan"/>
		      <span style="margin-left: -30px;">市场价格:</span><input type="text" name="market_price" value="<s:property value="model.market_price"/>" class="BianHao"/>
		      <span>商品价格：</span><input type="text" name="shop_price" value="<s:property value="model.shop_price"/>" class="ShiChangJia"/>
		      <span>商品描述：</span><input type="text" name="pdesc" value="<s:property value="model.pdesc"/>" class="ShangPinJia"/>
		      <span style="margin-left: -30px;">是否热门：</span><select name="is_host" class="YanSe">
		      	<option value="1">是</option>
		      	<option value="0">否</option>
		      </select>
		      <input type="submit" value="修改" class="TiJiao2"/>
		   </div>
		</form>
		</div>
	</body>
</html>
