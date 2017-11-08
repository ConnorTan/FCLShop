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
</head>


<body>
<script src="js/my.js" count="399" zindex="-1" opacity="0.8" color="190,205,128" type="text/javascript">
</script>

<canvas id="c_n1" width="1664" height="489" style="position: fixed; top: 0px; left: 0px; z-index:-2; opacity: 0.8;">
</canvas>



<%@ include file="menu.jsp" %>

<!--header end -->
<div  id="banner">
	<img src="${pageContext.request.contextPath }/images/slider-image1.jpg" class="banner_img">
    <div class="banner_box">
                	<h3 class="bnn">$111.99</h3>
                    <h2>塔布 <br> 2016 限定版</h2>
                    <h3>It is a long established fact that a reader<br>
                                	Lorem Ipsum is that it has a more-or-less 
                                </h3>
                    <h3 class="ei_h3">
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_1.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_2.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_3.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_4.png" alt=""></a>
                    </h3>
             </div>
    <div class="banner_box2">
                	<h3 class="bnn">$222.99</h3>
                    <h2>夜中芭蕾 <br> 2016 夏季休闲款</h2>
                    <h3>It is a long established fact that a reader<br>
                                	Lorem Ipsum is that it has a more-or-less 
                                </h3>
                    <h3 class="ei_h3">
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_1.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_2.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_3.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_4.png" alt=""></a>
                    </h3>
             </div>
    <div class="banner_box3">
                	<h3 class="bnn">$333.99</h3>
                    <h2>黑天鹅 <br> 2016 史诗版</h2>
                    <h3>It is a long established fact that a reader<br>
                                	Lorem Ipsum is that it has a more-or-less 
                                </h3>
                    <h3 class="ei_h3">
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_1.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_2.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_3.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_4.png" alt=""></a>
                    </h3>
             </div> 
     <div class="banner_box4">
                	<h3 class="bnn">$444.99</h3>
                    <h2>小型男<br> 2016 儿童节限定</h2>
                    <h3>It is a long established fact that a reader<br>
                                	Lorem Ipsum is that it has a more-or-less 
                                </h3>
                    <h3 class="ei_h3">
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_1.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_2.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_3.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_4.png" alt=""></a>
                    </h3>
             </div>
        <div class="banner_box5">
                	<h3 class="bnn">$555.99</h3>
                    <h2>韩、朝民族特殊服装<br> 2016 典藏版</h2>
                    <h3>It is a long established fact that a reader<br>
                                	Lorem Ipsum is that it has a more-or-less 
                                </h3>
                    <h3 class="ei_h3">
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_1.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_2.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_3.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_4.png" alt=""></a>
                    </h3>
             </div>
     <div class="banner_box6">
                	<h3 class="bnn">$666.99</h3>
                    <h2>幽暗深林<br> 2016 怀旧款</h2>
                    <h3>It is a long established fact that a reader<br>
                                	Lorem Ipsum is that it has a more-or-less 
                                </h3>
                    <h3 class="ei_h3">
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_1.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_2.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_3.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_4.png" alt=""></a>
                    </h3>
             </div>
       <div class="banner_box7">
                	<h3 class="bnn">$777.99</h3>
                    <h2>简约白短<br> 2016 绝版</h2>
                    <h3>It is a long established fact that a reader<br>
                                	Lorem Ipsum is that it has a more-or-less 
                                </h3>
                    <h3 class="ei_h3">
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_1.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_2.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_3.png" alt=""></a>
                        <a class="ei_icons" href="#"><img src="${pageContext.request.contextPath }/images/icon_4.png" alt=""></a>
                    </h3>
             </div>          
               
	<ul>
    	<li class="banner1 sLi"></li>
        <li class="banner1"></li>
        <li  class="banner1"></li>
        <li  class="banner1"></li>
        <li  class="banner1"></li>
        <li  class="banner1"></li>
        <li  class="banner1"></li>
    </ul>
    <ul class="ul_2">
        <li >
  		<span class="active" >塔布</span>
		<p align="center" style="font-size:15px; margin-top:5px;">现卖：$111.99</p> </li>
         <li >
  		<span class="active">夜中芭蕾</span>
		<p align="center" style="font-size:15px; margin-top:5px;">现卖：$222.99</p> </li>
         <li >
  		<span class="active">黑天鹅</span>
		<p align="center" style="font-size:15px; margin-top:5px;">现卖：$333.99</p> </li>
         <li >
  		<span class="active">小型男</span>
		<p align="center" style="font-size:15px; margin-top:5px;">现卖：$444.99</p> </li>
         <li >
  		<span class="active">特色服装</span>
		<p align="center" style="font-size:15px; margin-top:5px;">现卖：$555.99</p> </li>
         <li >
  		<span class="active">幽暗深林</span>
		<p align="center" style="font-size:15px; margin-top:5px;">现卖：$666.99</p> </li>
         <li >
  		<span class="active">简约白短</span>
		<p align="center" style="font-size:15px; margin-top:5px;">现卖：$777.99</p> </li>
      
    </ul>
</div>
<!--banner end -->
<div class="recommend">
	<div class="recommend_img">
    
	<img src="${pageContext.request.contextPath }/images/jt1.jpg">
  	<div class="recommend_p1">
    <a href="#"><p align="center" style="font-size:20px; padding-top:13px;color:#0C6;">温馨 家庭</p></a>
    </div>
    
    <img src="${pageContext.request.contextPath }/images/ql1.jpg">
  	<div class="recommend_p2">
    <a href="#"><p align="center" style="font-size:20px; padding-top:13px;color:#0C6;">情侣 专属</p></a>
    </div>
    
    <img src="${pageContext.request.contextPath }/images/ds1.jpg">
    <div class="recommend_p3">
    <a href="#"><p align="center" style="font-size:20px; padding-top:13px;color:#0C6;">单身 贵族</p></a>
    </div>
    
  	</div>
    
   
</div>
<!--recommend end -->
<div class="production">

	<!-- 上装推荐 -->
  <div id="sztj"><p>~上装 推荐~</p></div>	
  
  	<div id="xxk">
  	  <span class="s1">中国风</span>
  	  <span class="s2">欧美风</span>
   	  <span class="s3">韩流</span>
      <span class="s4">日式</span>
    </div>
   
    <!--  中国风  -->
    <div id="CN">
    
    <s:iterator  var="p" value="hList">
     <div class="sz">
     <a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid" />"/>
      <img src="${pageContext.request.contextPath}<s:property value="#p.image"/>"/>
      <span class="szname"><s:property value="#p.pname"/></span>
      <span class="price">￥<s:property value="#p.shop_price"/></span>
     </div>
    </s:iterator>  
    
    </div>
   
   <!--  欧美风 -->
    <div id="OM">
    
        <div class="sz"><a href="#">
      <img src="${pageContext.request.contextPath}/images/img/sy4.jpg" />
      <span class="szname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy3.jpg" />
    <span class="szname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy2.jpg" />
    <span class="szname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy1.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    <div class="sz"><a href="#">
      <img src="${pageContext.request.contextPath }/images/img/sy7.jpg" />
      <span class="szname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy8.jpg" />
    <span class="szname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy5.jpg" />
    <span class="szname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy6.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    </div>
    
    <!-- 韩流  -->
    <div id="HL">
    
         <div class="sz"><a href="#">
      <img src="${pageContext.request.contextPath }/images/img/sy2.jpg" />
      <span class="szname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy4.jpg" />
    <span class="szname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy1.jpg" />
    <span class="szname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy3.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    <div class="sz"><a href="#">
      <img src="${pageContext.request.contextPath }/images/img/sy8.jpg" />
      <span class="szname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy7.jpg" />
    <span class="szname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy6.jpg" />
    <span class="szname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy5.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    </div>
   
   <!--  日式 -->
    <div id="RS">
    
         <div class="sz"><a href="#">
      <img src="${pageContext.request.contextPath }/images/img/sy8.jpg" />
      <span class="szname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy5.jpg" />
    <span class="szname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy6.jpg" />
    <span class="szname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy7.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    <div class="sz"><a href="#">
      <img src="${pageContext.request.contextPath }/images/img/sy4.jpg" />
      <span class="szname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy2.jpg" />
    <span class="szname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="sz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy1.jpg" />
    <span class="szname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="sz">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/sy3.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    </div>
     <!-- 下装推荐 -->
	 <div id="xztj"><p>~下装 推荐~</p></div>	
  
  	<div id="xxk">
  	  <span class="x1">中国风</span>
  	  <span class="x2">欧美风</span>
   	  <span class="x3">韩流</span>
      <span class="x4">日式</span>
    </div>
   
    <!--  中国风  -->
    <div id="X_CN">
    
     <div class="xz"><a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz5.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="xz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz6.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="xz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz7.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="xz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz8.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    <div class="xz"><a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz4.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span></a>
     </div>
      
       <div class="xz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz3.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span></a>
    </div>
    
     <div class="xz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz2.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span></a>
    </div>
    
      <div class="xz"><a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz1.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span></a>
    </div>
    
    </div>
   
   <!--  欧美风 -->
     <div id="X_OM">
    
         <div class="xz">
         <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz1.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="xz">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz2.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="xz">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz3.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="xz">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz4.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    <div class="xz">
    <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz5.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="xz">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz6.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="xz">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz7.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="xz">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz8.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    
    </div>
    
    <!-- 韩流  -->
     <div id="X_HL">
    
          <div class="xz">
          <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz3.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="xz">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz4.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="xz">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz1.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="xz">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz2.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    <div class="xz">
    <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz7.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="xz">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz8.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="xz">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz5.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="xz">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz6.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    
    </div> 
   <!--  日式 -->
    <div id="X_RS">
    
         <div class="xz">
         <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz7.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="xz">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz5.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="xz">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz8.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="xz">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz6.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    <div class="xz">
    <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/xz2.jpg" />
      <span class="xzname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="xz">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz4.jpg" />
    <span class="xzname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="xz">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz1.jpg" />
    <span class="xzname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="xz">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/xz3.jpg" />
    <span class="xzname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    
    </div>
 	  <!-- 鞋子推荐 -->
  	<div id="fttj"><p>~鞋子 推荐~</p></div>	
  
  	<div id="xxk">
  	  <span class="f1">中国风</span>
  	  <span class="f2">欧美风</span>
   	  <span class="f3">韩流</span>
      <span class="f4">日式</span>
    </div>
   
    <!--  中国风  -->
    <div id="F_CN">
   	
     <div class="ft">
      <a href="#"> 
      <img src="${pageContext.request.contextPath }/images/img/ft8.jpg" />
     <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft7.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft6.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft5.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    <div class="ft">
    <a href="#"> 
      <img src="${pageContext.request.contextPath }/images/img/ft4.jpg" />
      <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft3.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft2.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft1.jpg" />
    <span class="ftname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    </div>
   
   <!--  欧美风 -->
    <div id="F_OM">

       <div class="ft">
       <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/ft5.jpg" />
      <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft6.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft7.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft8.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    <div class="ft">
    <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/ft1.jpg" />
      <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft2.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft3.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft4.jpg" />
    <span class="ftname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    </div>
    
    <!-- 韩流  -->
    <div id="F_HL">
    
       <div class="ft">
       <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/ft1.jpg" />
      <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft2.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft3.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft4.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    <div class="ft">
    <a href="#">
      <img src="${pageContext.request.contextPath }/images/img/ft5.jpg" />
      <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft6.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft7.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#">
    <img src="${pageContext.request.contextPath }/images/img/ft8.jpg" />
    <span class="ftname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>  
    </div>
   
   <!--  日式 -->
    <div id="F_RS">
    
        <div class="ft">
        <a href="#"> 
      <img src="${pageContext.request.contextPath }/images/img/ft4.jpg" />
      <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft3.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft2.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft1.jpg" />
    <span class="szname">初学者</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
    <div class="ft">
 	   <a href="#"> 
      <img src="${pageContext.request.contextPath }/images/img/ft8.jpg" />
      <span class="ftname">存在感</span>
      <span class="price">￥998</span>
      </a>
     </div>
      
       <div class="ft">
       <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft7.jpg" />
    <span class="ftname">独角戏</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
     <div class="ft">
     <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft6.jpg" />
    <span class="ftname">十九岁</span>
    <span class="price">￥998</span>
    </a>
    </div>
    
      <div class="ft">
      <a href="#"> 
    <img src="${pageContext.request.contextPath }/images/img/ft5.jpg" />
    <span class="ftname">初学者</span>
    <span class="price">￥998</span>
    </a>
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
<!--footer end-->
</body>
</html>
