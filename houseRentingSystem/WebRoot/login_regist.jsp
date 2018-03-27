<%@page import="com.hyn.util.ConfigUtil"%>
<%@page import="com.hyn.service.DictService"%>
<%@page import="com.hyn.domain.Dict"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	DictService dictService = (DictService)ConfigUtil.getBean(DictService.SERVER_NAME);
	//查询性别
	List<Dict> sexList = dictService.getDictByTypeList("sex");
	//查询管理员
	List<Dict> manageList = dictService.getDictByTypeList("manage");
	request.setAttribute("sexList", sexList);
	request.setAttribute("manageList", manageList);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录、注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/login_regist.css" />
	<link rel="stylesheet" href="css/footer.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("input").focus(function(){
				$(this).css('border','1px solid #22BB01');
			});
			$("input").blur(function(){
				$(this).css('border','1px solid #333333');
			});
		});
	</script>
	<script type="text/javascript">
	
		function test(thisform){
		with (thisform)
		  {
		  if (validate_required(email,"Email must be filled out!")==false)
		    {email.focus();return false;}
		  }
		}
		
	</script>
  </head>
  
  <body>
  <div class="lr_mcontainer">
	<!--登录注册页面开始-->
	<div class="lr_container">
		<!--登录注册页面导航开始-->
		<div class="lr_nav">
			<ul id="myTab" class="nav nav-justified my_nav_ul" >
				<li><a href="#m_login" data-toggle="tab">登录</a></li>
				<li><a href="#m_regist" data-toggle="tab">注册</a></li>
			</ul>
		</div>
		<!--登录注册页面导航结束-->
		<!--登录注册页面导航展示开始-->
		<div id="myTabContent" class="tab-content">
			<!--登录页面内容开始-->
			<div class="tab-pane fade in active"  id="m_login">
				<div class="ml_con">
				<form action="login.do" method="post" onsubmit="return test(this)">
					<div class="my_field">
						<label>用  户  名</label>
						<input class="input_js" class="in_css" type="text" name="userName" />
					</div>
					<div class="my_field">
						<label>密&nbsp;&nbsp;码</label>
						<input type="password" name="passWord" />
					</div>
					
					<div class="my_field">
						<label>用户类型</label>
						<select name="type">
						<c:forEach items="${manageList }" var="manage">
							<option value="${manage.data_name }">${manage.data_name }</option>
						</c:forEach>
						</select>
					</div>
					<div class="my_field">
						<button onclick="login_vali()" class="bt_css" type="submit">登录</button>
					</div>
				</form>
				</div>
			</div>
			<!--登录页面内容结束-->
			<!--注册页面内容开始-->
			<div  class="tab-pane fade"  id="m_regist">
				<div class="mr_con">
				<form action="regist.do" method="post"  onsubmit="return test(this)">
						<div class="my_field">
						<label>用  户  名</label>
						<input type="text" name="userName"/>
					</div>
					<div class="my_field">
						<label>密&nbsp;&nbsp;码</label>
						<input type="password" name="passWord" />
					</div>
					<div class="my_field">
						<label>年&nbsp;&nbsp;龄</label>
						<input type="text" name="age"/>
					</div>
					<div class="my_field">
						<label>性&nbsp;&nbsp;别</label>
						<select name="sex">
						<c:forEach items="${sexList }" var="sex">
							<option value="${sex.data_name }">${sex.data_name}</option>
						</c:forEach>
						</select>
					</div>
					<div class="my_field">
						<label>常用邮箱</label>
						<input type="text" name="email"/>
					</div>
					<div class="my_field">
						<label>联系电话</label>
						<input type="text" name="phone"/>
					</div>
					<div class="my_field">
						<button class="bt_css" type="submit">注册</button>
					</div>
					</form>
				</div>
			</div>
			<!--注册页面内容结束-->
		</div>
		<!--登录注册页面导航展示结束-->
	</div>
	<!--登录注册页面结束-->
		<!--页面尾部模块开始-->
		<div class="footer">
			<p>计算机学院王云鹏</p>
		</div>
		<!--页面尾部模块结束-->
</div>
	<script>
   $(function () {
      $('#myTab li:eq(0) a').tab('show');
   });
	</script>
  </body>
</html>
