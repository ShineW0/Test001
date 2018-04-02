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
						<li><img src="images/room_per/01/carousel.jpg" alt="汽车" data-description="360度展示"></li>
						<li><img src="images/room_per/01/carousel01.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel02.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel03.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel04.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel05.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel06.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel07.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel08.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel09.jpg" alt=""></li>
						<li><img src="images/room_per/01/carousel10.jpg" alt=""></li>
						</ul>
					</div>
				</div>    
			</section>
		</div>
		<!--汽车图片轮播结束-->
		<!--汽车介绍页面右边开始-->
		<div class="room_right">
			<div class="room_rent">
				<h2>￥</h2><h1>12.0-34.95</h1><h2>万</h2>
			</div>
			<ul>
				<li>
					<span>车型：</span>
					<p>广汽丰田-汉兰达</p>
				</li><br />
				<li>
					<span>发动机：</span>
					<p>2.0T，3.5L</p>
				</li><br />
				
				<li>
					<span>变速箱：</span>
					<p>手自一体</p>
				</li><br />
				<li>
					<span>车身结构：</span>
					<p>SUV</p>
				</li><br />
				<li>
					<span>联系人：</span>
					<p>张先生</p>
				</li><br />
				<li>
					<span style="margin-top: 32px;">联系电话：</span>
					<div class="per_phone"><h1>14567890432</h1></div>
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
						 二三十万的预算，想买辆中型SUV，转了一圈眼睛都看花了不知道买啥，那不如出门左转到广汽丰田4S店看看汉兰达吧。在我眼里汉兰达就是这样一款车，它没什么硬伤，实用且可靠，开着舒服不说，还很保值，对于有老有小的家庭来说很合适。
						 纵然现在七座SUV很多，但汉兰达依旧成为很多人的最终选择，转眼现款汉兰达上市都三年了，但别说优惠了，想提个车你都得排老长的队，说它是爆款中的爆款一点儿都不过分，就在前几天，它的中期改款车型正式上市了，售价基本没变，但加了一大堆配置，挺有诚意。
						 对于汉兰达这种本身在设计上没什么槽点的车来说，想要在造型方面做改动其实挺难的，一个不留神就容易沦为败笔。眼前的新款汉兰达其实跟2016纽约车展发布的海外版车型基本没什么区别，与现款相比它的变化主要集中在前脸部分，超大尺寸的梯形格栅看起来非常霸气，根据车型不同，汉兰达提供三种样式的前格栅，如果你对这车熟悉了，看脸就知道大概多少钱。
						 大灯的基础轮廓没有发生改变，只是将LED日间行车灯集成到了大灯内部，整体感更强，值得一提的是豪华版及以上配置车型都配备了远近光自动调节功能，非常实用。美中不足的是新车没能在光源上取得突破，依旧只有顶配车型才配备了LED近光灯，在全民玩灯的时代，它的表现远不如竞品。
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
