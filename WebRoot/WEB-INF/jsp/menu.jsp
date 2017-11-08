<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="header">
	
	<div class="top_1">
		<div class="logo_img">
    		<a href="#"><img src="${pageContext.request.contextPath }/images/logo.png" alt=""/>  </a>
        </div>
       	<div class="web_search">
    		<form action="" method="">           
    		   <input  class="web_st" type="text" >
     		   <input  class="web_sbt" type="image" src="${pageContext.request.contextPath }/images/search.png" />
    	    </form>   	
   		</div>
   		<s:if test="#session.existUser == null">
        <div class="login">
        	<form action="" method="">
            	<p class="p_login1"><a href="${ pageContext.request.contextPath }/user_loginPage.action">亲，请登录</a></p>
                <p class="p_login2"><a href="${ pageContext.request.contextPath }/user_registPage.action">免费注册</a></p>
            </form>
        </div>     
        </s:if>
        <s:else>
        <div class="login">
        	<form action="" method="">
            	<p class="p_login1"><s:property value="#session.existUser.username"/></p>
                <p class="p_login2"><a href="${ pageContext.request.contextPath }/user_quit.action">退出</a></p>
            </form>
        </div>
        </s:else>     
     </div>  
     
     <div class="navigation">
     	<div  class="nb_left">
     	<ul>
        	<li class="action"><a href="${ pageContext.request.contextPath }/index.action">主页</a></li>
            <li><a href="sz.html">上装</a></li>
            <li><a href="xz.html">下装</a></li>
            <li><a href="xzz.html">鞋子</a></li>
            <li><a href="#">售后服务</a></li>
            <li><a href="#">关于我们</a></li>
        </ul>
        </div>
        
     	<div class="nb_right">
        	<ul>
            	<li class="collect"><a href="${ pageContext.request.contextPath }/order_findByid.action?page=1"><img src="${pageContext.request.contextPath }/images/art.png"><span>我的订单</span></a></li>
                <li class="shopping_cart"><a href="${ pageContext.request.contextPath }/cart_myCart.action"><img src="${pageContext.request.contextPath }/images/cart.png"><span> 购物车</span></a></li>
            </ul>
        </div>	
     </div>
</div>