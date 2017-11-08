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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${pageContext.request.contextPath}/admin/admin.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div class="DaoHangTiao">
<a href="main.html">首页</a>&nbsp;/&nbsp;商品列表
</div>
<div style="border:1px solid #90F; width:1116px;height:180px; margin:20px auto; position:relative;">
<div class="DaoHangTiao2"><span>商品列表</span></div>
<div>
	<table border="1" cellpadding="0" cellspacing="0">
    	<tr>
        	<td width="150" align="center">名字</td>
            <td width="150" align="center">图片</td>
            <td width="150" align="center">编号</td>
            <td width="150" align="center">商品价格</td>
            <td width="150" align="center">市场价格</td>
            <td width="150" align="center">是否热门</td>
            <td width="150" align="center">操作</td>
        </tr>
        <s:iterator var="product" value="pageBean.list" status="status">
       <tr>
       		<td width="150" align="center"><s:property value="#product.pname"/></td>
       		<td width="150" align="center"><img  width="40" height="45" src="${pageContext.request.contextPath}/<s:property value="#product.image"/>"></td>
       		<td width="150" align="center"><s:property value="#product.pid"/></td>
       		<td width="150" align="center"><s:property value="#product.shop_price"/></td>
       		<td width="150" align="center"><s:property value="#product.market_price"/></td>
       		<td width="150" align="center"><s:if test="#product.is_host==1">
   					是
   				</s:if><s:else>否</s:else></td>
       		<td width="150" align="center"><a href="${ pageContext.request.contextPath }/adminProduct_edit.action?pid=<s:property value="#product.pid"/>">编辑</a>&nbsp;
       		<a href="${ pageContext.request.contextPath }/adminProduct_delete.action?pid=<s:property value="#product.pid"/>">删除</a></td>
       </tr>
       </s:iterator> 
    </table>
<div class="FenYe2">
<ul>
	<s:if test="pageBean.page!=1">
   <li style="height: 100px"><a href="${pageContext.request.contextPath}/adminProduct_findAll.action?page=1">首页</a></li>
   <li style="height: 100px"><a href="${pageContext.request.contextPath}/adminProduct_findAll.action?page=<s:property value="pageBean.page-1"/>">上页</a></li>
   </s:if>
   <s:if test="pageBean.page!=pageBean.totalPage">
   <li style="height: 100px"><a href="${pageContext.request.contextPath}/adminProduct_findAll.action?page=<s:property value="pageBean.page+1"/>">下页</a></li>
   <li style="height: 100px"><a href="${pageContext.request.contextPath}/adminProduct_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a></li>
	</s:if>
</ul>
</div>
</div>
  </body>
</html>
