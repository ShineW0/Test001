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
    <!--  修改1-->
    <title>添加车辆信息页面</title>
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
                <li class="current"><a href="#"><img src="img/icons/menu/layout.png" alt="" />车源管理</a>
                    <ul>
	                    <li><a href="admin_manage_room_insert.jsp">增加车辆信息</a></li>
	                    <li class="current"><a href="queryHouse.do">查询车辆信息</a></li>
	                </ul>
                </li>
                <li><a href="#"><img src="img/icons/menu/brush.png" alt="" />用户账户管理</a>
                    <ul>
                       	<li><a href="admin_user_insert.jsp">添加用户管理</a></li>
	                    <li><a href="selectUser.do">查删改用户管理</a></li>
                    </ul>
                </li>
                
            </ul>
        </div>
<!-- 页面内容开始 -->
        <div id="content" class="white">
            <h1><img src="img/icons/posts.png" alt="" /> 添加车辆信息 </h1>

<div class="bloc">
    <div class="title">添加信息</div>
    <div class="content">
    <!--上传图片开始-->
    <div style="width:100%;height:200px;">
    <div style="width:40%; height:170px;float:left;">
    <form action="updateHouseImgBack.do" method="post" enctype="multipart/form-data">
       <%--  <input type="text" name="id" value="${house.id }"/> --%>
        <!--上传图片开始-->
		 <div class="input">
            <label for="file">上传图片</label>
            <input type="file" id="file" name="file" value="123"/>
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
		  		<img style="width:120px; height:150px; margin-right: 20px;" src="${house.image1 }">
		  		<img style="width:120px; height:150px; margin-right: 20px;" src="${house.image2 }">
		  		<img style="width:120px; height:150px;" src="${house.image3 }">
			</div>
        </div>
        </div>
        
        <!--上传图片结束-->
        
        
       <!-- <form action="updateHouseBack.do" method="post" enctype="multipart/form-data"> -->
    	<!--出租方式开始-->
    	<input type="text" name="u_id" value="${us.id }" style="display: none"/>
    	<input type="text" name="id"  id="input98" value="${house.id}" style="display:none;" >
    	<input type="text" name="image1" value="upload/${file01}" style="display:none;"/>
    	<input type="text" name="image2" value="upload/${file02}" style="display:none;" />
    	<input type="text" name="image3" value="upload/${file03}" style="display:none;"/>
    	<div class="input_css">
    	
            <label class="label label_css">购买方式</label>
			<label>
				<input type="radio" name="rental_mode" id="optionsRadios1" value="全款" checked> 全款
			</label>
			<label>
				<input type="radio" name="rental_mode" id="optionsRadios2" value="贷款">贷款
			</label>
        </div>
    	<!--付款方式结束-->
    	<!--城市名称开始-->
    	<div class="input">
    		<label class="label label_css">城市名称</label>
    		<input type="text" name="village_name" id="input1" value="${house.village_name }" />
    	</div>
    	<!--城市名称结束-->
    	<!--详细地址开始-->
    	<div class="input_css input">
            <label for="BigCate">详细地址</label>
            <span>
            	<select name="address" id="input2">
            		<%-- <option>${house.address }</option> --%>
	                <option value="北京三里屯">北京三里屯</option> 
					<option value="上海虹桥">上海虹桥</option>
					<option value="深圳福田区">深圳福田区</option>
            	</select>
            </span>
        </div>
    	
        <!--车辆体积开始-->
        <div class="input input_css">
            <label for="input1">称车辆大小</label>
	    	<input class="unit_room_in" type="text" id="input3" name="house_area" value="${house.house_area }"/><p>立方米</p>
        </div>
        <!--车辆体积结束-->
        <!--车辆状况开始-->
        <div class="input_css input">
            <label for="BigCate">车辆情况</label>
            <span>
            	<select name="house_direction" id="input4">
	                <%-- <option>${house.house_direction }</option> --%>
	                <option>颜色</option>
					<option>黑</option>
					<option>白</option>
					<option>银</option>
					<option>红</option>
					
            	</select>
            </span>
            <span>
            	<select name="decoration" id="input5">
            		<option>车辆配置</option>
					<option>豪华版</option>
					<option>高配版</option>
					<option>旗舰版</option>
					<option>标准版</option>
					<option>低配版</option>
            	</select>
            </span>
           
        </div>
        
        <!--车源标题开始-->
        <div class="input">
    		<label class="label label_css">车源标题</label>
    		<input type="text" id="input6" name="house_title" value="${house.house_title }"/>
    	</div>
        <!--房源标题结束-->
        <!--房源描述开始-->
        <div class="input">
            <label for="textarea1">车辆描述</label>
            <textarea name="house_intro" id="textarea1" rows="7" cols="1"
            	placeholder="  详细的描述可以提升车辆卖出机会                    
									">${house.house_intro }</textarea>
        </div>
        
        <!--车辆描述结束-->
        
        <!--提交按钮开始-->
        <div class="submit input_css">
            <input class="subm_in" type="submit" value="提交" onclick="send1()"/>
        </div>
        <!--提交按钮结束-->
        <!-- </form> -->
       
        <script type="text/javascript">
        function send1(){
        	
        	var house_id = document.getElementById("input98").value;
        	
            var rental_mode = document.getElementById("optionsRadios1").value;
            var rental_mode = document.getElementById("optionsRadios2").value;
            var village_name = document.getElementById("input1").value;
            var address = document.getElementById("input2").value;
            var house_intro = document.getElementById("input3").value;
            var house_direction = document.getElementById("input4").value;
            var decoration = document.getElementById("input5").value;
            var house_title = document.getElementById("input6").value;
           $.ajax({
        	  
        url: "updateHouseBack.do",
        type: "post",
        datatype: "json",
        data: {
        	  'id': house_id,
            'village_name': village_name,
            'rental_mode': rental_mode,
            'address': address,
            'house_intro': house_intro,
            'house_direction': house_direction,
            'decoration': decoration,
            'house_title': house_title,
            
        },
       
        success: function (data, state) {
            
            alert("successful updated");
        },
         error: function () {
           
            alert("false");
        } 
    })
		}
   
</script>
         
	</div>
	
  </body>
</html>
