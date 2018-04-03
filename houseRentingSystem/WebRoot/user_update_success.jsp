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
	                <li><a href="user_person_room.jsp#section-2">增添成功</a></li>
	            </ul>
	        </div>
	        
	        <div class="col-xs-9">
	        	
	            <h2 id="section-1">增添汽车信息成功</h2>
	            <%-- <form action="insertHouse.do" method="post">
	            <input type="text" name="u_id" value="${user.id}">
				<input type="submit" value="点击跳回继续插入">
				</form> --%>
				<a href="${pageContext.request.contextPath }/admin_manage_room_insert.jsp">继续添加</a>
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