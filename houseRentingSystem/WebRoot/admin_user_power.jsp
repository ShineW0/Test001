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
    
    <title>添加房源信息页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="js/libs/jquery/1.6/jquery.min.js"></script>
    <script type="text/javascript" src="js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="css/min.css" />
    <link rel="stylesheet" href="css/adminCss/user_power.css" />
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
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" />用户账户管理</a>
                    <ul>
                       	<li><a href="admin_user_insert.jsp">添加用户管理</a></li>
	                    <li><a href="selectUser.do">查删改用户管理</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" />数据字典管理</a>
                    <ul>
                       	<li><a href="admin_dict_insert.jsp">添加数据字典管理</a></li>
	                    <li><a href="dict.do">查删改数据字典管理</a></li>
                    </ul>
                </li>
                <li class="current"><a href="admin_user_power.jsp"><img src="img/icons/menu/brush.png" alt="" />权限管理</a> </li>
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" />财务报表管理</a>
                </li>
                <li><a href="admin_data_init_manage.jsp"><img src="img/icons/menu/brush.png" alt="" />数据初始化管理</a></li>
            </ul>
        </div>

        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" /> 用户权限管理 </h1>
			<div class="bloc">
			    <div class="title">用户权限</div>
				<!--用户权限管理开始-->			   	
			    <div class="content">
			    	<!--超级管理员的权限开始-->
			    	<div class="input input_css">
			            <label class="label label_css">${dict.data_name}</label>
			            <c:forEach items="${dict.funList }" var="fun">
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1" checked> ${fun.fun_name}
						</label>
						</c:forEach>
			       	</div>
			       	<!--超级管理员的权限结束-->
			       	<!--管理员的权限开始-->
			    	<div class="input input_css">
			            <label class="label label_css">管理员</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1" checked> 房源信息管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">用户账户管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2"> 数据字典管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">房源信息管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">用户账户管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">数据字典管理
						</label>
			       	</div>
			       	<!--管理员的权限结束-->
			       	<!--普通用户的权限开始-->
			    	<div class="input input_css">
			            <label class="label label_css">普通用户</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios1" value="option1" checked> 房源信息管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">用户账户管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2"> 数据字典管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">房源信息管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">用户账户管理
						</label>
						<label class="label_check">
							<input type="checkbox" name="optionsRadios" id="optionsRadios2" value="option2">数据字典管理
						</label>
			       	</div>
			       	<!--普通用户的权限结束-->
			       	<!--提交按钮开始-->
		        <div class="submit input_css">
		            <input class="subm_in" type="submit" value="授权" />
		        </div>
		        <!--提交按钮结束-->
			    </div>
			    <!--用户权限管理结束-->
			</div>
		</div>
  </body>
</html>
