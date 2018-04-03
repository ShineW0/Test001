<%@page import="org.apache.ibatis.session.RowBounds"%>
<%@page import="com.hyn.domain.Dict"%>
<%@page import="com.hyn.util.ConfigUtil"%>
<%@page import="com.hyn.service.DictService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <!--显示车辆信息  -->
    <title>数据字典页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	 
    <script type="text/javascript" src="js/libs/jquery/1.6/jquery.min.js"></script>
    <script type="text/javascript" src="js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="css/min.css" />
    <link rel="stylesheet" href="css/adminCss/room_forms.css" />
    <script type="text/javascript" src="js/min.js"></script>
	<script type="text/javascript" src="content/settings/main.js"></script>
	<link rel="stylesheet" href="content/settings/style.css" />
  </head>
  
  <body>
    <div class="settings" id="settings">
        <div class="wrapper">
            <div class="grid3">
                <div class="titre">Backgrounds</div>
                <a href="url(css/img/bg.html" class="backgroundChanger active" title="White"></a>
                <a href="url(css/img/dark-bg.html" class="backgroundChanger dark" title="Dark"></a>
                <a href="url(css/img/wood.html" class="backgroundChanger dark" title="Wood"></a>
                <a href="url(css/img/altbg/smoothwall.html" class="backgroundChanger" title="Smoothwall"></a>
                <a href="url(css/img/altbg/black_denim.html" class="backgroundChanger dark" title="black_denim"></a>
                <a href="url(css/img/altbg/carbon.html" class="backgroundChanger dark" title="Carbon"></a>
                <a href="url(css/img/altbg/double_lined.html" class="backgroundChanger" title="Double lined"></a>
                <div class="clear"></div>
            </div>
            <div class="grid3">
                <div class="titre">Bloc style</div>
                <a href="black.html" class="blocChanger" title="Black" style="background:url(css/img/bloctitle.png);"></a>
                <a href="white.html" class="blocChanger active" title="White" style="background:url(css/img/white-title.png);"></a>
                <a href="wood.html" class="blocChanger" title="Wood" style="background:url(css/img/wood-title.jpg);"></a>
                <div class="clear"></div>
            </div>
            <div class="grid3">
                <div class="titre">Sidebar style</div>
                <a href="grey.html" class="sidebarChanger active" title="Grey" style="background:#494949"></a>
                <a href="black.html" class="sidebarChanger" title="Black" style="background:#262626"></a>
                <a href="white.html" class="sidebarChanger" title="White" style="background:#EEEEEE"></a>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        <a class="settingbutton" href="#">

        </a>
    </div>        
        <!--页面头部开始--> 
         <div id="head">
            <div class="left">
                <a href="#" class="button profile"><img src="img/icons/top/huser.png" alt="" /></a>
                您好, 
                <a href="#">王云鹏</a>
                |
                <a href="index.html">安全退出</a>
            </div>
            <div class="right">
            </div>
        </div>
         <!--页面头部结束-->      
                
        <!--            
                SIDEBAR
                         --> 

        
		<!-- 页面内容开始 -->
        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" />率先选择车辆 </h1>
    		<!--查询数据字典数据开始-->
			<div class="bloc">
			    <div class="title">
			    <a href="queryHouseone.do">刷新最近车辆信息</a>
			    </div>
			    <div class="content">
				<table>
		            <thead>
		                <tr>
		                    <th>数据ID</th>
		                    <th>车辆标题</th>
		                   <!--  <th>车辆类型</th> -->
		                    <th>车辆配置</th>
		                    <th>车辆颜色</th>
		                    <th>地址</th>
		                    <th>城市</th>
		                    <th>操作：修改</th>
		                    <th>操作：删除</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<c:forEach items="${houseList }" var="house">
		                <tr>
		                    <td>${house.id}</td>
		                    <td>${house.house_title}</td>
		                   <%--  <td>${house.house_type}</td> --%>
		                    <td>${house.decoration}</td>
		                    <td>${house.house_direction}</td>
		                    <td>${house.address}</td>
		                    <td>${house.village_name}</td>
		                    
		                </tr>
		                </c:forEach>
		                </tbody>
		        </table>
			     <div class="pagination">
		            <c:if test="${pageIndex_house>1}">
		            	<a href="getHousePageBackone.do?pageIndex_house=${pageIndex_house-1}&pageNum_house=7">«</a>
		            </c:if>
		            <a href="getHousePageBackone.do?pageIndex_house=${pageIndex_house+1 }&pageNum_house=7">»</a>
		        </div> 
			    </div>
			</div>
		<!--查询数据字典数据开始-->
		</div>
  </body>
</html>
