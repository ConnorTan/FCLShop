<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
<head>
<link type="text/css" href="${pageContext.request.contextPath }/css/information.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myjs.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/Style.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.1.min.js"></script>
<meta charset="utf-8">
<title>Commodity information
</title>
<script>
	function saveCart(){
		document.getElementById("cartFrom").submit();
	}
</script>
</head>

<body>
<%@include file="menu.jsp" %>
<!--header end -->
<script src="${pageContext.request.contextPath }/js/my.js" count="299" zindex="-1" opacity="0.8" color="190,205,128" type="text/javascript">
</script>
<canvas id="c_n1" width="1664" height="489" style="position: fixed; top: 0px; left: 0px; z-index:-2; opacity: 0.8;">
</canvas>
<hr style="color:#999; width:1360px; height:1px; margin:0 auto;">
<MARQUEE behavior="scroll" contenteditable="true" onstart="this.firstChild.innerHTML+=this.firstChild.innerHTML;"
 onmouseover=this.stop() onmouseout=this.start() scrollamount="10" width="900">
<SPAN unselectable="on">
<img src="${pageContext.request.contextPath }/images/chs2.jpg">
</SPAN>
</MARQUEE>

<hr style="color:#999;  width:1360px; height:0px; margin:0 auto;">



<div id="commodity">

	<div class="com_left">
    	<div class="big_yf">
        	<img src="${pageContext.request.contextPath }<s:property value="model.image"/>">
            <ul>
            	<li><img src="${pageContext.request.contextPath }/images/information/x_yf1.jpg"></li>
                <li><img src="${pageContext.request.contextPath }/images/information/x_yf2.jpg"></li>
                <li><img src="${pageContext.request.contextPath }/images/information/x_yf3.jpg"></li>
                <li><img src="${pageContext.request.contextPath }/images/information/x_yf4.jpg"></li>
                <li><img src="${pageContext.request.contextPath }/images/information/x_yf5.jpg"></li>
           	</ul>
        </div>
    </div>
    
   <div class="com_right">
        <p style="font-size:20px;font-weight:bolder;"><s:property value="model.pdesc"/></p>
        <span>
     	<ul>
        <li><p style="height:30px;"></p></li>
        <li class="jg1"><p>价钱</p></li> 
        <li><p class="jq1" >￥<s:property value="model.shop_price"/></p></li>
        <hr size="1" noshade="noshade" style="border:1px #CCC dashed;">
        <li class="jg1"><p  style="padding-top:22px;">促销价</p></li>
        <li><p class="jq2">￥<s:property value="model.market_price"/></p></li>
        </ul>
        </span>

 		<ul>
        <li>
        <p class="yunfei">运费</p>
        <p class="yunfei">日本东京 &nbsp;&nbsp; 至</p>
         <select  name="select" size="1" class="select" id="select" >
            <option >广州</option>
            <option>湖南</option>
            <option>新疆</option>
            <option>美国</option>
            <option>加拿大</option>
            <option>新加坡</option>
          </select>
        <p class="yunfei">快递：0.00</p>
        <p style="height:50px;"></p>
        </li>
        </ul>
        
        <ul class="xl">
        	<li>月销量&nbsp;:&nbsp;399</li>
            <li>总销量&nbsp;:&nbsp;9999</li>
            <li>累计评价&nbsp;:&nbsp;99</li>
        </ul>
        
        <ul class="cm">
        	<p style="float:left; margin-left:58px;margin-right:20px; margin-top:35px; font-size:15px;">尺码</p>
        	<li><a href="#">165/M</a></li>
            <li><a href="#">170/L</a></li>
           	<li><a href="#">175/XL</a></li>
            <li><a href="#">180/XXL</a></li>
            <li ><a href="#">185/XXXL</a></li>
        </ul>
        <p style="float:left; margin-left:56px;margin-right:35px; margin-top:35px; font-size:15px;">颜色</p>
        <ul class="s_yf">
        	
        	<li><img src="${pageContext.request.contextPath }/images/information/s_yf1.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf2.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf3.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf4.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf3.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf2.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf1.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf4.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf1.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf2.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf3.jpg"></li>
            <li><img src="${pageContext.request.contextPath }/images/information/s_yf4.jpg"></li>
         </ul> 
         <form action="${pageContext.request.contextPath }/cart_addCart.action" id="cartFrom" method="post">
         <p style="float:left; margin-left:56px;margin-right:35px;font-size:15px;">数量</p>
         <input type="hidden" name="pid" value="<s:property value="model.pid"/>"/>
         <ul class="sl">
         	<li><input type="number" id="sl" value="1" min="1" max="999" title="请输入购买量" name="count"/></li>
            <p>件</p>
            <p>库存</p><p id="kc">999</p><p>件</p>
         </ul>
         <div class="ljgm">
         	<p class="ljgm_p1"><a href="#">立即购买</a></p>
            <p  class="ljgm_p2">
            <img src="${pageContext.request.contextPath }/images/information/cart.png">
            <input id="addCart" value="加入购物车" type="button" onclick="saveCart()" style="baground-color:red"/></p></div>
        	
        </form>  
    </div>

</div>

<!-- commodity end-->




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
         	<img src="${pageContext.request.contextPath }/images/appIcon.png">
            <ul>
            <li class="ftapp"><a href="#"><h3 align="center">FCL服饰城&nbsp;&nbsp;&nbsp;&nbsp;APP</h3></a></li>
            <li><p style="color:#999;" align="center">下载APP，随时随地，秒杀好货</p></li>
            <li><p style="color:#999;" align="center">优质服饰，买得放心，穿得舒心</p></li>
            
            </ul>
         </div>  
         
            <div class="footer_contact">
            <ul>
            <div class="weixin"><img src="${pageContext.request.contextPath }/images/weixin.png"></div>
            <li><h3 align="left"><img src="${pageContext.request.contextPath }/images/call.png">0763-8888-8888</h3></li>
            <li><a href="#"><p align="left">免费咨询（咨询、建议、投述）</p></a></li>
            <li><a href="#"><p align="left">周一至周六8：00-20:00</p></a></li>
            <li><a href="#"><p align="left"><img src="${pageContext.request.contextPath }/images/weibo.png">官方微博</p></a></li>
            <li class="gfwx" style="width:70px;"><a href="#"><p align="left"><img src="${pageContext.request.contextPath }/images/webchat.png">官方微信</p></a></li>
            <li><a href="#"><p align="left"><img src="${pageContext.request.contextPath }/images/blog.png">官方论坛</p></a></li>
            
            </ul>
         </div>          
    </div>
    
    <div class="footer_two">
    <p>Copyright © 2016 &nbsp;&nbsp; Lsxg.com&nbsp; &nbsp; All Rights Reserved 京公网安备 11010802015302号 京ICP备 &nbsp; 77585201号</p>
    </div>
    

</div>
<!-- footer end-->

</body>
</html>
