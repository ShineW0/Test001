<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<title>汽车展示</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/carousel_room.css" />
	<link rel="stylesheet" href="css/room_per.css" />
	<link rel="stylesheet" href="css/lr_header.css" />
	<link rel="stylesheet" href="css/footer.css" />
	<link rel="stylesheet" href="css/bootstrap.css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript"><br />
	    $(function () {<br />
	        var ie6 = /msie 6/i.test(navigator.userAgent)<br />
	        , dv = $("#fixedMenu"), st;<br />
	        dv.attr( otop , dv.offset().top); //存储原来的距离顶部的距离<br />
	        $(window).scroll(function () {<br />
	            st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);<br />
	            if (st >= parseInt(dv.attr( otop ))) {<br />
	                if (ie6) {//IE6不支持fixed属性，所以只能靠设置position为absolute和top实现此效果<br />
	                    dv.css({ position:  absolute , top: st });<br />
	                }<br />
	                else if (dv.css( position ) !=  fixed ) dv.css({  position :  fixed , top: 0 });<br />} else if (dv.css( position ) !=  static ) dv.css({  position :  static  });<br />
	        });<br />
	    });<br />
	</script>
	<script type="text/javascript">
	    $(function () {
	        var ie6 = /msie 6/i.test(navigator.userAgent)
	        , dv = $('#fixedMenu'), st;
	        dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
	        $(window).scroll(function () {
	            st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
	            if (st >= parseInt(dv.attr('otop'))) {
	                if (ie6) {//IE6不支持fixed属性，所以只能靠设置position为absolute和top实现此效果
	                    dv.css({ position: 'absolute', top: st });
	                }
	                else if (dv.css('position') != 'fixed') dv.css({ 'position': 'fixed', top: 0 });
	            } else if (dv.css('position') != 'static') dv.css({ 'position': 'static' });
	        });
	    });
	</script>
</head>
<body>
	<!--页面头部导航开始-->
		<jsp:include page="header.jsp"></jsp:include>
	<!--页面头部导航结束-->
	<!--页面内容开始-->
	<div class="room_myContainer">
		
		<div class="room_mc">
		
		<div class="room_mc_title">
			<h2>${house.house_title }</h2>
		</div>
		
		<!--汽车图片轮播开始-->
		<div class="room_carousel">
			<section class="cntr rc_css">
				<div class="m10">
					<div class="cntr mt20">
						<ul class="pgwSlideshow">
						<li><img src="images/room_per/02/carousel.jpg" alt="汽车" data-description="360度展示"></li>
						<li><img src="images/room_per/02/carousel01.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel02.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel03.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel04.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel05.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel06.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel07.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel08.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel09.jpg" alt=""></li>
						<li><img src="images/room_per/02/carousel10.jpg" alt=""></li>
						</ul>
					</div>
				</div>    
			</section>
		</div>
		<!--汽车图片轮播结束-->
		<!--汽车介绍页面右边开始-->
		<div class="room_right">
			<div class="room_rent">
				<h2>￥</h2><h1>1.68-5.60</h1><h2>万</h2>
			</div>
			<ul>
				<li>
					<span>车型：</span>
					<p>五菱宏光</p>
				</li><br />
				<li>
					<span>发动机：</span>
					<p>1.2L，1.5L</p>
				</li><br />
				
				<li>
					<span>变速箱：</span>
					<p>手动</p>
				</li><br />
				<li>
					<span>车身结构：</span>
					<p>客车</p>
				</li><br />
				<li>
					<span>联系人：</span>
					<p>李先生</p>
				</li><br />
				<li>
					<span style="margin-top: 32px;">联系电话：</span>
					<div class="per_phone"><h1>13678927732</h1></div>
				</li><br />
			</ul>
			<div class="room_tip">
				<div class="rtip_top"><h2>郑重提示：</h2></div>
				<div class="rtip_bottom">在签订合同之前，切勿支付任何形式的费用，以免上当受骗</div>
			</div>
		</div>
		
		</div>
		
		<div class="room_intro">
			
			<div class="room_intro_all" >
				
				<div id="fixedMenu">
					<ul class="nav nav-justified my_nav_ul">
						<li ><a>车辆描述</a></li>
						
					</ul>
				</div>

				
				<div class="my_room_intro_show">
					
					<div id="room_desc">
						<h1>车辆描述</h1>
						<p>
						 家喻户晓的五菱宏光为什么会卖这么多？当然就是因为它的实惠和实用性，拉货载人样样精通，而且偶尔还可以跑跑山路。现款的五菱宏光S已经很久没有改款更新了，甚至2014款的车型也还在卖，不过嘛，对于改不改款这个问题很多人都不太在意，毕竟买这车的人也就贪图它实用而已。
						 而在今年一月份，新款五菱宏光S的申报图横空出世，给了大家一个措手不及，而且新外观的变化是真的很大，整个车头的造型向运动风格靠拢，完全没有了之前微面的样子，它变得不安分了。
						 一眼看去，一改老款车型陈旧的设计风格，和外观的变化保持一致，似乎要与微面身份划清界限了，不过车内的科技感不强，当然了，这个价位也不能要求太多。动力部分，新款五菱宏光S将继续搭载1.2L和1.5L两款发动机，最大马力分别为82匹和105匹，相较现款车型分别减少了4马力和7马力。虽然马力上的数值减少了一丢丢，不过运动的外观与内饰应该能在心里层面加上不少马力吧？
						</p>
					</div>
					
	           </div>
	<!--页面内容结束-->
	<!--页面尾部模块开始-->
	<div class="footer">
		<p>计算机学院王云鹏</p>
	</div>
	<!--页面尾部模块结束-->
	<script src="js/jquery.min.js" type="text/javascript"></script>
</body>
</html>
