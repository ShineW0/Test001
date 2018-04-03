<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>二手车直卖网的首页</title>
        <!-- 导入页面所需要的css样式和js特效 -->
        
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/lr_header.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script>
    	$(document).ready(function(){
    		$(".m_city").mouseenter(function(){
    			$(this).css('background','url(images/hot_city/city_back.jpg)');
    		});
    		$(".m_city").mouseleave(function(){
    			$(this).css('background','url(images/hot_city/city_out.jpg)');
    		});
    	});
    </script>
  </head>
  
  <body>
  	<!--页面头部导航开始-->
	<div class="header">
		<div class="header_all">
			<!--左边导航开始-->
			<div class="header_l">
				<div class="p_nav">
					<p>客服电话：000-000-000</p>
				</div>
				<a href="carhouse.jsp">车库</a>
				<a href="index.jsp">首页</a>
				<div class="p_log">
					<p>二手车直卖网</p>
				</div>
			</div>
			<!--左边导航结束-->
			<!--左边导航开始-->
			<div class="header_r">
				<!--用户登录注册开始-->
				<div class="lr_did"></div>
				<div class="login_regist">
					<c:if test="${not empty user.userName}">
						<ul class="nav">
							<li  class="active" class="dropdown" style="float: left">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									欢迎用户：${user.userName } <span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="getHouseByUId.do?u_id=${user.id }">个人中心</a></li>
								</ul>
							</li>
							<li style="float:left;"><a href="safeExit.do">安全退出</a></li>
						</ul>
					</c:if>
					<c:if test="${empty user.userName}">
					<a href="userLoginRegist.do" style="display: block; margin-top: 10px;">
						登录/注册
					</a>
					</c:if>
				</div>
			</div>
			<!--左边导航结束-->
		</div>
	</div>
	<!--页面头部导航结束-->
	<!--首页广告轮播开始-->
	<div class="carousel_intro">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>   
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/carousel01.jpg" alt="First slide" style="height: 440px;width: 100%;">
				</div>
				<div class="item">
					<img src="images/carousel02.jpg" alt="Second slide" style="height: 440px;width: 100%;">
				</div>
				<div class="item">
					<img src="images/carousel03.jpg" alt="Third slide" style="height: 440px;width: 100%;">
				</div><div class="item">
					<img src="images/carousel04.jpg" alt="Third slide" style="height: 440px;width: 100%;">
				</div>
			</div>
		</div> 				
	</div>
	<!--首页广告轮播结束-->
<!--页面内容模块开始-->
<div class="myContainer">
	<!--轮播下面的简介开始-->
	<div class="myCon_ad">
		<div class="myCon_ad_css">
			<div class="myCon_ad_per">
				<div class="myCon_ad_per_top">价格实惠</div>
				
			</div>
			<div class="myCon_ad_per">
				<div class="myCon_ad_per_top">质量保证</div>
				
			</div>
			<div class="myCon_ad_per">
				<div class="myCon_ad_per_top">服务周到</div>
				
			</div>
			 <div class="myCon_ad_per">
				<div class="myCon_ad_per_top">车辆安全</div>
				
			</div>
		</div>
	</div>
	<!--轮播下面的简介结束-->

	<div class="short_rent_hotCity">
		<div class="srhc_title">
			<div class="tit_top">线下城市</div>
			<div class="tit_bottom">让您购买更方便，售后有保障</div>	
		</div>
		<div class="srhc_intro">
			<ul>
				<li>
					<img src="images/hot_city/shanghai.jpg" />
					<a href="room_index.jsp" class="m_city">上海</a>
				</li>
				<li>
					<img src="images/hot_city/xian.jpg" />
					<a href="room_index.jsp" class="m_city">西安</a>
				</li>
				<li>
					<img src="images/hot_city/guangzhou.jpg" />
					<a href="room_index.jsp" class="m_city">广州</a>
				</li>
				<li>
					<img src="images/hot_city/shenzhen.jpg"/>
					<a href="room_index.jsp" class="m_city">深圳</a>
				</li>
				<li>
					<img src="images/hot_city/beijing.jpg" />
					<a href="room_index.jsp" class="m_city">北京</a>
				</li>
				<li>
					<img src="images/hot_city/xiamen.jpg" />
					<a href="room_index.jsp" class="m_city">厦门</a>
				</li>
				<li>
					<img src="images/hot_city/hangzhou.jpg" />
					<a href="room_index.jsp" class="m_city">杭州</a>
				</li>
				<li>
					<img src="images/hot_city/sanya.jpg" />
					<a href="room_index.jsp" class="m_city">三亚</a>
				</li>
			</ul>
		</div>
	</div>

	<div class="long_rent_hotRoom">
		<div class="lrh_c">
		<div class="lrhr_title">
			<div class="tit_top">经典导航</div>
			<div class="tit_bottom">为您甄最合适的车辆</div>
		</div>
		
		<div class="lrhr_intro">
			<ul>
				<li>
					<a href="car_weimian.jsp"><img src="images/hot_room/01.jpg"/></a>
					<a href="car_weimian.jsp" class="a_css"><p class="p_css">微面</p></a>
					<a href="car_weimian.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="car_weimian.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="car_weimian.jsp" class="a_css"><p class="p_css">价格:2-25万</p></a>
				</li>
				<li>
					<a href="car_pika.jsp"><img src="images/hot_room/02.jpg"/></a>
					<a href="car_pika.jsp" class="a_css"><p class="p_css">皮卡</p></a>
					<a href="car_pika.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="car_pika.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="car_pika.jsp" class="a_css"><p class="p_css">价格:4-77万</p></a>
				</li>
				<li>
					<a href="car_suv.jsp"><img src="images/hot_room/03.jpg"/></a>
					<a href="car_suv.jsp" class="a_css"><p class="p_css">SUV</p></a>
					<a href="car_suv.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="car_suv.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="car_suv.jsp" class="a_css"><p class="p_css">价格:3-100万</p></a>
				</li>
				<li>
					<a href="car_paoche.jsp"><img src="images/hot_room/04.jpg"/></a>
					<a href="car_paoche.jsp" class="a_css"><p class="p_css">跑车</p></a>
					<a href="car_paoche.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="car_paoche.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="car_paoche.jsp" class="a_css"><p class="p_css">价格:22-100万</p></a>
				</li>
				<li>
					<a href="car_bigcar.jsp"><img src="images/hot_room/05.jpg"/></a>
					<a href="car_bigcar.jsp" class="a_css"><p class="p_css">大型车</p></a>
					<a href="car_bigcar.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="car_bigcar.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="car_bigcar.jsp" class="a_css"><p class="p_css">价格:41-100万</p></a>
				</li>
				<li>
					<a href="car_smallcar.jsp"><img src="images/hot_room/06.jpg"/></a>
					<a href="car_smallcar.jsp" class="a_css"><p class="p_css">小型车</p></a>
					<a href="car_smallcar.jsp" class="a_css"><p class="p_css">4.4分</p></a>
					<a href="car_smallcar.jsp" class="a_css"><p class="p_css">23条评论</p></a>
					<a href="car_smallcar.jsp" class="a_css"><p class="p_css">价格：3-53万</p></a>
				</li>
			</ul>
		</div>
		
		</div>
	</div>
	
</div>
<!--页面内容模块结束-->

<!--页面尾部模块开始-->
<div class="footer">
	<p>计算机学院王云鹏</p>
</div>
<!--页面尾部模块结束-->
  </body>
</html>
