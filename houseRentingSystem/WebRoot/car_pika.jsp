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
						<li><img src="images/room_per/03/carousel.jpg" alt="汽车" data-description="360度展示"></li>
						<li><img src="images/room_per/03/carousel01.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel02.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel03.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel04.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel05.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel06.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel07.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel08.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel09.jpg" alt=""></li>
						<li><img src="images/room_per/03/carousel10.jpg" alt=""></li>
						</ul>
					</div>
				</div>    
			</section>
		</div>
		<!--汽车图片轮播结束-->
		<!--汽车介绍页面右边开始-->
		<div class="room_right">
			<div class="room_rent">
				<h2>￥</h2><h1>25.98-108.0</h1><h2>万</h2>
			</div>
			<ul>
				<li>
					<span>车型：</span>
					<p>福特F-150</p>
				</li><br />
				<li>
					<span>发动机：</span>
					<p>3.5T</p>
				</li><br />
				
				<li>
					<span>变速箱：</span>
					<p>手自一体</p>
				</li><br />
				<li>
					<span>车身结构：</span>
					<p>皮卡</p>
				</li><br />
				<li>
					<span>联系人：</span>
					<p>刘先生</p>
				</li><br />
				<li>
					<span style="margin-top: 32px;">联系电话：</span>
					<div class="per_phone"><h1>19853890432</h1></div>
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
						2018款福特F-150猛禽在此前车型的基础上，针对底盘进行了强化，提升整车载物能力和车辆稳定性。配置方面，2018款车型还新增方向盘加热、新增英岩灰和传奇红2种外观色并搭载全新B&O PLAY音响系统（10扬声器）。
						动力方面，新款车型没有变化，依旧搭载3.5T发动机，传动系统匹配10AT变速箱，同时像FOX Racing Shox减振系统、专为沙漠高速越野驾驶而特别设计的Baja竞速模式等原来车型的特点依旧保留。
						
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
