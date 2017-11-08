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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myjs.js"></script>

<meta charset="utf-8">
<title>Home</title>
<script>
function change(){
		var img1 = document.getElementById("checkImg");
		img1.src="${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime();
	}
</script>
</head>


<body>
<script src="${pageContext.request.contextPath }/js/my.js" count="399" zindex="-1" opacity="0.8" color="190,205,128" type="text/javascript">
</script>

<canvas id="c_n1" width="1664" height="489" style="position: fixed; top: 0px; left: 0px; z-index:-2; opacity: 0.8;">
</canvas>




<%@ include file="menu.jsp" %>
  <!--登陆-->   
  <div id="DL">
  	<div id="fttj"><p>~登 陆~</p></div>	
          <div class="ewm"><img src="${pageContext.request.contextPath }/images/login/dlewm.png"></div>
            <div class="srk">
            <form id="loginForm" action="${ pageContext.request.contextPath }/user_login.action"  method="post">
            <input  class="srkwbk" type="text"  placeholder="你的用户名" name="username"/><div><s:actionerror /></div>
            <input class="srkwbk" type="password" placeholder="密码" name="password"/>
            <input class="srkyzm" type="text" placeholder="验证码" name="checkcode"/>
            
          </div> 
          <div class="yzm"><img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action" onclick="change()" title="点击更换验证码">  </div>
          <div class="dl">
          <input class="srkyzm" type="submit" value="登录" />
          </form>
          </div>
          <div class="zc">
          <input class="srkyzm" type="submit" value="注册" />
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

</body>
</html>
