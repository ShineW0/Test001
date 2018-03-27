<%@page import="java.io.File"%>
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
    
    <title>添加房源信息页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page"> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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
                <a href="#">${user.userName}</a>
                |
                <a href="safeExit.do">安全退出</a>
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
                <li class="current"><a href="#"><img src="img/icons/menu/layout.png" alt="" />租赁房屋管理</a>
                    <ul>
	                    <li class="current"><a href="admin_manage_room_insert.jsp">增加房源信息</a></li>
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
                <li><a href="admin_user_power.jsp"><img src="img/icons/menu/brush.png" alt="" />权限管理</a> </li>
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" />财务报表管理</a>
                </li>
                <li><a href="admin_data_init_manage.jsp"><img src="img/icons/menu/brush.png" alt="" />数据初始化管理</a></li>
            </ul>
        </div>
<!-- 页面内容开始 -->
        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" /> 添加房源信息 </h1>

<div class="bloc">
    <div class="title">添加信息</div>
    <div class="content">
    <!--上传图片开始-->
    <div style="width:100%;height:200px;">
    <div style="width:40%; height:170px;float:left;">
    <form action="uploadHouseImg.do" method="post" enctype="multipart/form-data">
        <!--上传图片开始-->
		 <div class="input">
            <label for="file">上传图片</label>
            <input type="file" id="file" name="file" />
        </div>
        <div class="input">
            <label for="file">上传图片</label>
            <input type="file" id="file" name="file01" />
        </div>
        <div class="input">
            <label for="file">上传图片</label>
            <input type="file" id="file" name="file02" />
        </div>
        
         <!--提交按钮开始-->
        <div class="submit input_css">
            <input style="margin-left:100px; margin-top:10px; margin-bottom: 10px;" type="submit" value="上传图片" />
        </div>
        <!--提交按钮结束-->
        </form>
        </div>
        <div style="width:60%; height:170px; float:left;">
        	<%
			String myPath = session.getServletContext().getRealPath("upload");
			File file = new File(myPath);	//文件夹对象
			File[] files =file.listFiles();	//获得文件夹下所有文件
			request.setAttribute("files", files);
		 	%>
		 	<div class="ui small image">
		 	<c:if test="${not empty file01 }">
		  		<img style="width:120px; height:150px; margin-right: 20px;" src="upload/${file01 }">
		  	</c:if>
		  	<c:if test="${not empty file02 }">
		  		<img style="width:120px; height:150px; margin-right: 20px;" src="upload/${file02 }">
		  	</c:if>
		  	<c:if test="${not empty file03 }">
		  		<img style="width:120px; height:150px;" src="upload/${file03 }">
			</c:if>
			</div>
        </div>
        </div>
        
        <!--上传图片结束-->
        
        <form action="insertHouse.do" method="post">
    	<!--出租方式开始-->
    	<input type="text" name="u_id" value="${us.id}" style="display: none" >
    	<input type="text" name="image1" value="upload/${file01}" style="display:none;"/>
    	<input type="text" name="image2" value="upload/${file02}" style="display:none;" />
    	<input type="text" name="image3" value="upload/${file03}" style="display:none;"/>
    	<div class="input_css">
            <label class="label label_css">出租方式</label>
			<label>
				<input type="radio" name="rental_mode" id="optionsRadios1" value="整租" checked> 整租
			</label>
			<label>
				<input type="radio" name="rental_mode" id="optionsRadios2" value="合租">合租
			</label>
        </div>
    	<!--出租方式结束-->
    	<!--小区名称开始-->
    	<div class="input">
    		<label class="label label_css">小区名称</label>
    		<input type="text" name="village_name" id="input1" />
    	</div>
    	<!--小区名称结束-->
    	<!--详细地址开始-->
    	<div class="input_css input">
            <label for="BigCate">详细地址</label>
            <span>
            	<select name="address">
	                <option value="尖草坪区">尖草坪区</option> 
					<option value="迎泽区">迎泽区</option>
					<option value="万柏林区">万柏林区</option>
            	</select>
            </span>
        </div>
    	<!--详细地址结束-->
    	<!--房屋户型开始-->
        <div class="input input_css">
            <label for="input1">房屋户型</label>
	    	<input class="unit_room_in" type="text" id="input1" name="house_room" /><p>室</p>
	    	<input class="unit_room_in" type="text" id="input1" name="living_room" /><p>厅</p>
	    	<input class="unit_room_in" type="text" id="input1" name="house_toilet" /><p>卫</p>
        </div>
        <!--房屋户型结束-->
        <!--房屋面积开始-->
        <div class="input input_css">
            <label for="input1">房屋面积</label>
	    	<input class="unit_room_in" type="text" id="input1" name="house_area"/><p>平米</p>
        </div>
        <!--房屋面积结束-->
        <!--房屋情况开始-->
        <div class="input_css input">
            <label for="BigCate">房屋情况</label>
            <span>
            	<select name="house_direction">
	                <option>朝向</option>
									<option>东</option>
									<option>南</option>
									<option>西</option>
									<option>北</option>
									<option>东西</option>
									<option>南北</option>
									<option>东南</option>
									<option>西南</option>
									<option>东北</option>
									<option>西北</option>
            	</select>
            </span>
            <span>
            	<select name="decoration">
            		<option>装修情况</option>
					<option>豪华装修</option>
					<option>精装修</option>
					<option>中等装修</option>
					<option>普通装修</option>
					<option>毛坯</option>
            	</select>
            </span>
            <span>
            	<select name="house_type">
            		<option>普通住宅</option>
					<option>公寓</option>
					<option>别墅</option>
					<option>平房</option>
					<option>酒店公寓</option>
					<option>商住两用</option>
            	</select>
            </span>
        </div>
        <!--房屋情况结束-->
		
        <!--租金要求开始-->
        <div class="input input_css">
            <label for="input1">租金要求</label>
	    	<input class="unit_room_in" type="text" id="input1" name="rental" /><p>元/月</p>
        </div>
        <!--租金要求结束-->
        <!--房源标题开始-->
        <div class="input">
    		<label class="label label_css">房源标题</label>
    		<input type="text" id="input1" name="house_title"/>
    	</div>
        <!--房源标题结束-->
        <!--房源描述开始-->
        <div class="input">
            <label for="textarea1">房源描述</label>
            <textarea name="house_intro" id="textarea1" rows="7" cols="1"
            	placeholder="  详细的描述可以提升房屋的出租机会                    
									1、房屋特征：
									2、周边配套：
									3、房东心态："></textarea>
        </div>
        <!--房源描述结束-->
        
        <!--提交按钮开始-->
        <div class="submit input_css">
            <input class="sub_in" type="submit" value="提交" />
        </div>
        <!--提交按钮结束-->
        </form>
        </div></div>
	</div>
  </body>
</html>
