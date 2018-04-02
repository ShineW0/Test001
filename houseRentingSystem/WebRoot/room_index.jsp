<%@page import="com.hyn.domain.Dict"%>
<%@page import="com.hyn.util.ConfigUtil"%>
<%@page import="com.hyn.service.DictService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	DictService dictService = (DictService)ConfigUtil.getBean(DictService.SERVER_NAME);
	List<Dict> addressList = dictService.getDictByTypeList("area");
	request.setAttribute("addressList", addressList);
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
   	<title>查找车库主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/lr_header.css"/>
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="css/room_index.css" />
	<link rel="stylesheet" href="css/bootstrap.css" />
	<script type="text/javascript" src="js/jquery.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
  </head>
  
  <body>
    <!-- 导入头文件开始 -->
    <jsp:include page="header.jsp"/>
    <!-- 导入头文件结束 -->
    <!-- 房源页面内容开始 -->
	<div class="myContain">
		<!-- 房源导航开始 -->
		<div class="myCon_nav">
			<!-- 导航标题开始 -->
			<div class="mc_nav_title">
			</div>
			<!-- 导航标题结束 -->
			<!--导航内容开始-->
			<div class="mc_nav_cont">
				<div class="nav_cont">
					<div class="nav_name">区域</div>
					<div class="no_limit"><a href="#">不限</a></div>
					<ul>
					<c:forEach items="#{addressList }" var="address">
						<li><a href="selectHouseByAddress.do?addre=${address.data_name }">${address.data_name}</a></li>
					</c:forEach>
					</ul>
				</div>
				<div class="nav_cont">
					<div class="nav_name">价格（元）</div>
					<div class="no_limit"><a href="#">不限</a></div>
					<ul>
						<li><a href="#">小于1500</a></li>
						<li><a href="#">1500-3000</a></li>
						<li><a href="#">3000-5000</a></li>
					</ul>
				</div>
				<div class="nav_cont">
					<div class="nav_name">户型</div>
					<div class="no_limit"><a href="#">不限</a></div>
					<ul>
						<li><a href="#">一居室</a></li>
						<li><a href="#">两居室</a></li>
						<li><a href="#">三居室</a></li>
						<li><a href="#">四居室</a></li>
					</ul>
				</div>
			</div>
			<!--导航内容结束-->
		</div>
		<!-- 房源导航结束 -->
		<!--房源资料卡开始-->
		<ul>
			<!--资料卡开始-->
			<c:forEach items="${houseList}" var="house">
			<input type="text" value="${house.id }" name="id" style="display:none; "/>
			<li>
				<div class="room_intro">
					<a href="getHouseById.do?house_id=${house.id }"><img src="${house.image1 }"/></a>
					<!--资料卡标题开始-->
					<div class="room_intro_tit">
						<a href="getHouseById.do?house_id=${house.id }"><h2>${house.house_title }</h2></a>
					</div>
					<!--资料卡标题结束-->
					<!--资料卡介绍开始-->
					<div class="room_intro_cont">
						<!--资料卡介绍左边开始-->
						<div class="room_intro_cont_l">
							<ul>
								<li>
									<span>${house.village_name}</span>
									<span>${house.house_direction }</span>
								</li>
								<li>
									<span>${house.house_type}厅</span>
									<span>${house.decoration}</span>
								</li>
								<li>
									<span>${house.house_room}室${house.living_room}厅${house.house_toilet}卫</span>
									<span>${house.house_area }平米</span>
									<span>${house.rental_mode }</span>
								</li>
							</ul>
						</div>
						<!--资料卡介绍左边结束-->
						<!--资料卡介绍右边开始-->
						<div class="room_intro_cont_r">
							<h1>${house.rental }/月</h1>
						</div>
						<!--资料卡介绍右边结束-->
					</div>
					<!--资料卡介绍结束-->
				</div>
			</li>
			</c:forEach>
			<!--资料卡结束-->
			
		</ul>
		<!--房源资料卡结束-->
		<div class="page_css">
			<div class="page_css_css">
				<div class="page_ul">
					<ul class="pagination pagination-lg">
						<li><a href="getHousePage.do?pageIndex_house=${pageIndex_house-1}&pageNum_house=7">&laquo;</a></li>
						<li><a href="getHousePage.do?pageIndex_house=1&pageNum_house=7">1</a></li>
						<li><a href="getHousePage.do?pageIndex_house=2&pageNum_house=7">2</a></li>
						<li><a href="getHousePage.do?pageIndex_house=3&pageNum_house=7">3</a></li>
						<li><a href="getHousePage.do?pageIndex_house=4&pageNum_house=7">4</a></li>
						<li><a href="getHousePage.do?pageIndex_house=5&pageNum_house=7">5</a></li>
						<li><a href="getHousePage.do?pageIndex_house=${pageIndex_house+1 }&pageNum_house=7">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 房源页面结束 -->
    <!-- 导入尾文件开始 -->
    <jsp:include page="footer.jsp"/>
    <!-- 导入尾文件结束 -->
  </body>
</html>
