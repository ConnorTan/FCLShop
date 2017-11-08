<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
<head>
<link type="text/css" href="${ pageContext.request.contextPath }/css/Style.css" rel="stylesheet">
<link type="text/css" href="${ pageContext.request.contextPath }/css/ShoppingCart.css" rel="stylesheet">
<link type="text/css" href="${ pageContext.request.contextPath }/css/cart.css" rel="stylesheet">
<link type="text/css" href="${ pageContext.request.contextPath }/css/common.css" rel="stylesheet">

<meta charset="utf-8">
<title>购物车</title>
</head>


<body>

<canvas id="c_n1" width="1664" height="489" style="position: fixed; top: 0px; left: 0px; z-index:-2; opacity: 0.8;">
</canvas>




<%@ include file="menu.jsp" %>
  
<!--购物车-->

 <div class="container cart">

		<div class="span24">
				<table>
				<s:iterator  var="order" value = "pageBean.list"/>
					<tbody>
					<tr>
						<th colspan="5">订单编号:<s:property value="model.oid"/>&nbsp;&nbsp;&nbsp;&nbsp;
							订单状态：
							<s:if test="#order.state == 1">
								<a href="#"><font color="red">未付款</font></a>
							</s:if>
							<s:if test="#order.state == 2">
								已付款
							</s:if>
							<s:if test="#order.state == 3">
								<a href="#"><font color="red">确认收货</font></a>
							</s:if>
							<s:if test="#order.state == 4">
								交易完成
							</s:if>
						</th>
					</tr>
					<s:iterator  var="orderItem" value="#order.orderItems">
					<tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
					</tr>
						<s:iterator var="orderItem" value="model.orderItems">
						<tr>
							<td width="60">
								<img src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"/>
							</td>
							<td>
								<s:property value="#orderItem.product.pname"/>
							</td>
							<td>
								<s:property value="#orderItem.product.market_price"/>
							</td>
							<td class="quantity" width="60">
								<s:property value="#orderItem.count"/>
							</td>
							<td width="140">
								<span class="subtotal">￥<s:property value="#orderItem.subtotal"/></span>
							</td>
							
						</tr>
							</s:iterator>
						</s:iterator>
				</tbody>
			</table>
				
		</div>
		
	</div>


  
  	





	 
	 
  
<!--production end-->

 <div id="footer">
	<div class="footer_one">
    	<div class="footer_ul">
        <ul>
        	<li ><h3 align="center">关于我们</h3></li>
        	<li><a href="#"><p align="center">关于我们</p></a></li>
            <li><a href="#"><p align="center">联系我们</p></a></li>
            <li><a href="#"><p align="center">加入我们</p></a></li>
        </ul>
		</div>   
        
        <div class="footer_ul">
        <ul>
        	<li><h3 align="center">消费者保障</h3></li>
        	<li><a href="#"><p align="center">保障范围</p></a></li>
            <li><a href="#"><p align="center">服务中心</p></a></li>
            <li><a href="#"><p align="center">退货退款流程</p></a></li>
        </ul>
		</div> 
        
         <div class="footer_ul">
        <ul>
        	<li><h3 align="center">付款方式</h3></li>
        	<li><a href="#"><p align="center">微信支付</p></a></li>
            <li><a href="#"><p align="center">银行卡支付</p></a></li>
            <li><a href="#"><p align="center">信用卡支付</p></a></li>
        </ul>
		</div>  
         
         <div class="footer_app">
         	<img src="images/appIcon.png">
            <ul>
            <li class="ftapp"><a href="#"><h3 align="center">FCL服饰城&nbsp;&nbsp;&nbsp;&nbsp;APP</h3></a></li>
            <li><p style="color:#999;" align="center">下载APP，随时随地，秒杀好货</p></li>
            <li><p style="color:#999;" align="center">优质服饰，买得放心，穿得舒心</p></li>
            
            </ul>
         </div>  
         
            <div class="footer_contact">
            <ul>
            <div class="weixin"><img src="images/weixin.png"></div>
            <li><h3 align="left"><img src="images/call.png">0763-8888-8888</h3></li>
            <li><a href="#"><p align="left">免费咨询（咨询、建议、投述）</p></a></li>
            <li><a href="#"><p align="left">周一至周六8：00-20:00</p></a></li>
            <li><a href="#"><p align="left"><img src="images/weibo.png">官方微博</p></a></li>
            <li class="gfwx" style="width:70px;"><a href="#"><p align="left"><img src="images/webchat.png">官方微信</p></a></li>
            <li><a href="#"><p align="left"><img src="images/blog.png">官方论坛</p></a></li>
            
            </ul>
         </div>          
    </div>
    
    <div class="footer_two">
    <p>Copyright © 2016 &nbsp;&nbsp; Lsxg.com&nbsp; &nbsp; All Rights Reserved 京公网安备 11010802015302号 京ICP备 &nbsp; 77585201号</p>
    </div>
    

</div>

</body>
</html>
