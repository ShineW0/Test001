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
						<li><img src="images/room_per/04/carousel.jpg" alt="汽车" data-description="360度展示"></li>
						<li><img src="images/room_per/04/carousel01.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel02.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel03.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel04.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel05.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel06.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel07.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel08.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel09.jpg" alt=""></li>
						<li><img src="images/room_per/04/carousel10.jpg" alt=""></li>
						</ul>
					</div>
				</div>    
			</section>
		</div>
		<!--汽车图片轮播结束-->
		<!--汽车介绍页面右边开始-->
		<div class="room_right">
			<div class="room_rent">
				<h2>￥</h2><h1>64.8-92.5</h1><h2>万</h2>
			</div>
			<ul>
				<li>
					<span>车型：</span>
					<p>保时捷718</p>
				</li><br />
				<li>
					<span>发动机：</span>
					<p>2.0T，2.5T</p>
				</li><br />
				
				<li>
					<span>变速箱：</span>
					<p>双离合</p>
				</li><br />
				<li>
					<span>车身结构：</span>
					<p>软顶敞篷车，硬顶跑车</p>
				</li><br />
				<li>
					<span>联系人：</span>
					<p>孙先生</p>
				</li><br />
				<li>
					<span style="margin-top: 32px;">联系电话：</span>
					<div class="per_phone"><h1>14457890432</h1></div>
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
						 为什么会买718 Cayman？

叫兽眼一直很心疼保时捷718这款车，因为这个车型生来就背负着原罪。

比方说，保时捷在设计产品时，718的性能是必须被压制的，发动机马力、变速箱都要和911拉开差距。

因为718中置后驱的先天结构，导致这台车可以很轻易地超越911的综合表现。

保时捷的信仰，不能被自家的产品灭掉。
再比方说，因为718的性能必须被压制，要和911拉开距离，那么价格必然也就拉开了距离。于是，很多汽车媒体在评价718时，总是会打上“最新型号”、“入门级”、“最便宜”、“装bee利器”、“木耳收割机”这些标签。


那为什么还要买这款车呢？放到今天，保时捷把它的入门级跑车命名为718是非常准确的，因为它是你在国内能买到的100万内唯一的一款中置后驱车（不要提本田的S660，这台车根本买不到），它比911低一个级别，但是比911更加贴近赛车的布局结构。


所以，如果错过了718，你想体验中置引擎的车，那么就至少得买一台215.8万元起的奥迪R8了。单凭这一点，保时捷718在这个价位里就有充足的购买理由！
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
