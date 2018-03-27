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
    
    <title>页面头部页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/lr_header.css" />

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
				<a href="index.jsp">首页</a>
				<div class="p_log">
					<p>二手车直卖网</p>
				</div>
			</div>
			<!--左边导航结束-->
			<!--左边导航开始-->
			<div class="header_r">
				<!--用户登录注册开始-->
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
				<!--用户登录注册结束-->
				<div class="seller_enlist">
					<c:if test="${not empty user.userName}">
						<a href="release_room_infor.jsp">车源</a>
					</c:if>
				</div>
				
			</div>
			<!--左边导航结束-->
		</div>
	</div>
	<!--页面头部导航结束-->
  </body>
</html>
