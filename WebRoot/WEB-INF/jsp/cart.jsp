<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
<head>
<link type="text/css" href="${pageContext.request.contextPath }/css/Style.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath }/css/ShoppingCart.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myjs.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/Calculation.js"></script>


<meta charset="utf-8">
<title>购物车</title>
</head>


<body>
<script src="js/my.js" count="399" zindex="-1" opacity="0.8" color="190,205,128" type="text/javascript">
</script>

<canvas id="c_n1" width="1664" height="489" style="position: fixed; top: 0px; left: 0px; z-index:-2; opacity: 0.8;">
</canvas>




<%@include file="menu.jsp" %>
  
  
<!--购物车-->
 			<s:if test="#session.cart.cartItems.size() != 0">
			<div class="gwc" style=" margin:auto;">
			<table cellpadding="0" cellspacing="0" class="gwc_tb1">
				<tr>
					
					<td class="tb1_td3">商品</td>
					<td class="tb1_td4">商品信息</td>
					<td class="tb1_td5">数量</td>
					<td class="tb1_td6" id="single_price">单价</td>
					<td class="tb1_td7">操作</td>
				</tr>
			</table>
				   
			
			<s:iterator  var="cartItem" value="#session.cart.cartItems">
			<table cellpadding="0" cellspacing="0" class="gwc_tb2">
				<tr>
					<td class="tb2_td1"><s:property value="#cartItem.product.pid"/></td>
					<td class="tb2_td2"><a href="#"><img src="${pageContext.request.contextPath}<s:property value="#cartItem.product.image"/>"/></a></td>
					<td class="tb2_td3"><a href="#"><s:property value="#cartItem.product.pname"/></a></td>
					<td class="tb1_td4"><s:property value="#cartItem.count"/></td>
					<td class="tb1_td5">
					</td>
					<td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"><s:property value="#cartItem.product.market_price"/></label></td>
					<td class="tb1_td7"><a href="${pageContext.request.contextPath}/cart_removeCart.action?pid=<s:property value="#cartItem.product.pid"/>">删除</a></td>
				</tr>
			</table>
			</s:iterator>
			
			<table cellpadding="0" cellspacing="0" class="gwc_tb3">
				<tr>
					
					<td class="tb3_td2"><a href="${pageContext.request.contextPath}/cart_clearCart.action" >清空购物车</a>
					<td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;"><label id="zong1" style="color:#ff5500;font-size:14px; font-weight:bold;"><s:property value="#session.cart.total"/></label></span></td>
					<td class="tb3_td4"><a href="${pageContext.request.contextPath}/order_save.action">结算</a></td>
				</tr>
			</table>
		
		</div>
		 </s:if>
		 <s:else>
		 	<div class="gwc" style=" margin:auto;">
		 		<span><h2>亲！你还没有购物,请前去购物！</h2></span>
		 	</div>
		 </s:else>
		 
		 
		 
 

 
 
 
 
 	
 

  
  	





	 
	 
  
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
