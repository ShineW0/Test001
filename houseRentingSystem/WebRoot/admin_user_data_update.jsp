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
	//查询性别
	List<Dict> sexList = dictService.getDictByTypeList("sex");
	//查询管理员
	List<Dict> manageList = dictService.getDictByTypeList("manage");
	request.setAttribute("sexList", sexList);
	request.setAttribute("manageList", manageList);
 %>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
   	<title>添加用户信息页面</title>
    
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
       <div id="sidebar">
            <ul>
                <li>
                    <a href="admin_manage_room_insert.jsp">
                        <img src="img/icons/menu/inbox.png" alt="" />
                        		管理界面
                    </a>
                </li>
                <li><a href="#"><img src="img/icons/menu/layout.png" alt="" />租赁房屋管理</a>
                    <ul>
	                    <li><a href="admin_manage_room_insert.jsp">增加房源信息</a></li>
	                	<li><a href="queryHouse.do">查询房源信息</a></li>
	                </ul>
                </li>
                <li class="current"><a href="#"><img src="img/icons/menu/brush.png" alt="" />用户账户管理</a>
                    <ul>
                       	<li class="current"><a href="admin_user_insert.jsp">添加用户管理</a></li>
	                    <li><a href="selectUser.do">查删改用户管理</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" />数据字典管理</a>
                    <ul>
                       	<li><a href="admin_dict_insert.jsp">添加数据字典管理</a></li>
	                    <li><a href="dict.do">查删改数据字典管理</a></li>
                    </ul>
                </li>
                <li><a href="admin_user_power.jsp"><img src="img/icons/menu/brush.png" alt="" />权限管理</a> </li>
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" />财务报表管理</a>
                </li>
                <li><a href="admin_data_init_manage.jsp"><img src="img/icons/menu/brush.png" alt="" />数据初始化管理</a></li>
            </ul>
        </div>
        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" />用户账户管理 </h1>
    		<div class="bloc">
    		<div class="title">添加用户信息</div>
    		<div class="content">
    			<form action="adminUserUpdate.do" method="post">
    			<input type="text" name="id" value="${user.id }" style="display: none"/>
		    	<div class="input">
		    		<label class="label label_css">用户名</label>
		    		<input type="text" id="input1" placeholder="请输入用户名" name="userName" value="${user.userName }" />
		    	</div>
		    	
		    	<div class="input">
		    		<label class="label label_css">密码</label>
		    		<input type="text" id="input1" placeholder="请输入密码" name="passWord" value="${user.passWord }" />
		    	</div>
		    	<div class="input">
		    		<label class="label label_css">年龄</label>
		    		<input type="text" id="input1" placeholder="请输入年龄" name="age" value="${user.age }" />
		    	</div>
		    	<div class="input">
		    		<label class="label label_css">用户类型</label>
		    		<span>
		            	<select name="type">
			               <c:forEach items="${manageList }" var="manage">
								<option value="${user.type}">${manage.data_name }</option>
							</c:forEach>
		            	</select>
		            </span>
		    	</div>
		    	<div class="input">
		    		<label class="label label_css">性别</label>
		    		<span>
		            	<select name="sex">
			               <c:forEach items="${sexList }" var="sex">
							<option value="${user.sex}">${sex.data_name }</option>
						</c:forEach>
		            	</select>
		            </span>
		    	</div>
		    	<div class="input">
		    		<label class="label label_css">常用邮箱</label>
		    		<input type="text" id="input1" placeholder="请输入常用邮箱" name="email" value="${user.email }"/>
		    	</div>
		    	
		    	<div class="input">
		    		<label class="label label_css">联系电话</label>
		    		<input type="text" id="input1" placeholder="请输入联系电话" name="phone" value="${user.phone }"/>
		    	</div>
				<!-- 提交按钮结束 -->
		        <div class="submit input_css">
		            <input class="subm_in" type="submit" value="添加用户" />
		        </div>
		        <!--提交按钮结束-->
		        </form>
		    </div>
		</div>
	</div>
  </body>
</html>
