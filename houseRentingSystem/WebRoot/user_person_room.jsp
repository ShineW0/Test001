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
    <!-- 交给谁用的，功能 -->
    <title>My JSP 'user_person_room.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/lr_header.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <style>
		/* Custom Styles */
		    ul.nav-tabs{
		        width: 140px;
		        margin-top: 20px;
		        border-radius: 4px;
		        border: 1px solid #ddd;
		        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
		    }
		    ul.nav-tabs li{
		        margin: 0;
		        border-top: 1px solid #ddd;
		    }
		    ul.nav-tabs li:first-child{
		        border-top: none;
		    }
		    ul.nav-tabs li a{
		        margin: 0;
		        padding: 8px 16px;
		        border-radius: 0;
		    }
		    ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
		        color: #fff;
		        background: #0088cc;
		        border: 1px solid #0088cc;
		    }
		    ul.nav-tabs li:first-child a{
		        border-radius: 4px 4px 0 0;
		    }
		    ul.nav-tabs li:last-child a{
		        border-radius: 0 0 4px 4px;
		    }
		    ul.nav-tabs.affix{
		        top: 30px; /* Set the top position of pinned element */
		    }
		</style>
		<script>
		$(document).ready(function(){
		    $("#myNav").affix({
		        offset: { 
		            top: 125 
		      }
		    });
		});
		</script>
  </head>
  
  <body  data-spy="scroll" data-target="#myScrollspy">
  	<!-- 页面头文件开始 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头文件结束 -->
    <div style="width:100%; height:60px; background-color:#EEEEEE;"></div>
    <div class="">
    <div class="container">
	    <div class="row">
	        <div class="col-xs-3" id="myScrollspy">
	            <ul class="nav nav-tabs nav-stacked" id="myNav">
	                <!-- <li><a href="user_person_room.jsp#section-1">查看车辆信息</a></li> -->
	                <li><a href="user_person_room.jsp#section-2">修改个人信息</a></li>
	            </ul>
	        </div>
	        
	        <div class="col-xs-9">
	            <!-- 修改个人信息开始 -->
	            <h2 id="section-2">修改个人信息</h2>
	            
	            <form action="updateUserById.do" method="post">
	            <input type="text" name="id" value=${user.id } style="display: none">
	            <input type="text" name="type" value=${user.type } style="display: none">
	            <table class="table table-bordered">
					<tbody>
						<tr>
							<td>用户名</td>
							<td><input name="userName" value="${user.userName }" style="border:1px solid white;"/></td>
						</tr>
						<tr>
							<td>密码</td>
							<td><input name="passWord" value="${user.passWord }" style="border:1px solid white;"/></td>
						</tr>
						<tr>
							<td>年龄</td>
							<td><input name="age" value="${user.age }" style="border:1px solid white;"/></td>
						</tr>
						<tr>
							<td>性别</td>
							<td><input name="sex" value="${user.sex }" style="border:1px solid white;"/></td>
						</tr>
						<tr>
							<td>常用邮箱</td>
							<td><input name="email" value="${user.email }" style="border:1px solid white;"/></td>
						</tr>
						<tr>
							<td>联系电话</td>
							<td><input name="phone" value="${user.phone }" style="border:1px solid white;"/></td>
						</tr>
					</tbody>
				</table>
					<center><input type="submit" style="width:100px; height:35px;background-color: #22BB61; border-radius:5px; border:1px solid #22BB61;" value="修改信息"/></center>
	            </form>
	            <hr>
	            <!-- 修改用户信息结束 -->
	        </div>
	    </div>
	</div>
    </div>
    <!-- 页面尾文件开始 -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- 页面尾文件结束 -->
  </body>
</html>