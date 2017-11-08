<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("ctx", basePath);
%>

<!doctype html>
<html>
<head>
<link type="text/css" href="${pageContext.request.contextPath }/css/Style.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/myjs.js"></script>

<meta charset="utf-8">
<title>Home</title>

</head>


<body>
<script src="js/my.js" count="399" zindex="-1" opacity="0.8" color="190,205,128" type="text/javascript">
</script>

<canvas id="c_n1" width="1664" height="489" style="position: fixed; top: 0px; left: 0px; z-index:-2; opacity: 0.8;">
</canvas>




<%@ include file="menu.jsp" %>
  <!--登陆-->   
  <div id="DL">
  	<div id="fttj"><p>~注 册~</p></div>	
    <div class="zczh">
    <form id="registerForm" action="${pageContext.request.contextPath}/user_register.action" method="post">
	  <input class="zh" type="text" placeholder="你的用户名" name="username" id="username" onBlur="checkUsername()"/>
	  <div><span id="span1"></span></div>
	  <input class="mm" type="password" placeholder="密码" name="password" id="password"/>
	  <input class="mm" type="password" placeholder="重复密码" id="repassword" />
	  <input class="zh" type="text" placeholder="邮箱" name="email" id="email" />
	  <input class="zh" type="text" placeholder="手机号码" name="number" id="number"/><br>
	  <button class="zcan" type="submit">注册</button>
    </form>
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
<script>
 $(".zcan").click(function(e) {
	 var username=$(".zh").val();
	 var password=$(".mm").val();
	 var repassword=$("#repassword").val();
	 var email=$("#email").val();
	 var number=$("#numer").val();
	 if(username.trim()==""||username==null){
		 alert("用户名不能为空!");
			return false;
	 }else{
	 	checkUsername();
	 }
	  if(password.trim()==""||password==null){
		 alert("密码不能为空!");
			return false;
	 }
	  if(repassword.trim()==""||repassword==null){
		 alert("请确认密码");
			return false;
	 }
	  if(email.trim()==""||email==null){
		 alert("邮箱不能为空!");
			return false;
	 }
	 if(number.trim()==""||number==null){
		 alert("手机号码不能为空!");
			return false;
	 }
 });
 
 function checkUsername(){
 		var username = document.getElementById("username").value;
		if(username == null|| username == ""){
			alert("用户名不能为空");
			return false;
		} else {
			// 1.创建异步交互对象
		var xhr = createXmlHttp();
		// 2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					document.getElementById("span1").innerHTML = xhr.responseText;
				}
			}
		}
		// 3.打开连接
		xhr.open("GET","${pageContext.request.contextPath}/user_findByName.action?time="+new Date().getTime()+"&username="+username,true);
		// 4.发送
		xhr.send(null);
		}
	}
	
	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
		 }
	
</script>
</html>
