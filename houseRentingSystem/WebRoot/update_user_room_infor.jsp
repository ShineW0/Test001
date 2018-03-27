<%@page import="java.io.File"%>
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
    
    <title>发布房源信息的页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/lr_header.css" />
	<link rel="stylesheet" href="css/footer.css" />
	<link rel="stylesheet" href="css/release_room_infor.css" />
	<link rel="stylesheet" href="css/bootstrap.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>

  </head>
  
  <body>
    <!-- 导入页面头文件开始 -->
    <jsp:include page="header.jsp"/>
    <!-- 导入页面头文件结束 -->
    <!--页面内容开始-->
	<div class="rri_container">
	<!--填写详细信息开始-->
	<div class="rris_container">
		<!--填写详细信息标题开始-->
		<div class="rri_title">
			<p>填写详细信息</p>
		</div>
		<!--房源描述及上传图片开始-->
		<div class="essential_infor" style="padding-top:30px; margin-top:-30px; height:200px;">
		<div class="ei_title">房屋描述及上传图片</div>
		<div class="ei_con">
		<!--房屋图片开始-->
			<div class="rel_room_field">
				<span>*</span>
				<div class="label_css">
					<label>房屋图片</label>
				</div>
				<div>
				<div class="upload_img">
				<form action="updateHouseImgUser.do" method="post" enctype="multipart/form-data">
					 <input type="text" name="id" value="${house.id }"/>
					 <!--上传图片开始-->
					 <div style="margin-top: 10px">
			            <input type="file" id="file" name="file" />
			        </div>
			        <div style="margin-top: 10px">
			            <input type="file" id="file" name="file01" />
			        </div>
			        <div style="margin-top: 10px">
			            <input type="file" id="file" name="file02" />
			        </div>
			        <div style="margin-top: 10px">
			            <input style="margin-left: 40px; margin-top:15px;" type="submit" id="file" value="上传图片" />
			        </div>
		        </form>
				</div>
			</div>
			<!--房屋图片结束-->
			<div style="height:170px; float:left;">
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
			</div></div>
		
		</div>
		
		<!--填写详细信息标题结束-->
		<form action="updateHouseById.do" method="post">
		<input type="text" name="id" value="${house.id}" style="display: none"/>
		<input type="text" name="u_id" value="${us.id}" style="display: none" >
    	<input type="text" name="image1" value="upload/${file01}" style="display:none;"/>
    	<input type="text" name="image2" value="upload/${file02}" style="display:none;" />
    	<input type="text" name="image3" value="upload/${file03}" style="display:none;"/>
		
		
		<div class="essential_infor" style="padding-top:30px;">
			<!--房源描述的内容开始-->
			<div class="ei_con">
				<!--房源标题开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>房源标题</label>
					</div>
					<!--单选框开始-->
					<div class="field_frame">
						<input id="inp_css" type="text" name="house_title"  value="${house.house_title }"/>
					</div>
					<!--单选框结束-->
				</div>
				<!--房源标题结束-->
				
				<!--房源描述开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>房源描述</label>
					</div>
					<div class="ta_room_desc">
						<textarea name="house_intro" cols="60" rows="8" placeholder="  详细的描述可以提升房屋的出租机会                    
							1、房屋特征：
							2、周边配套：
							3、房东心态：">${house.house_intro}</textarea>
					</div>
				</div>
		<div class="essential_infor">
			<div class="ei_title">房屋基本信息</div>
			<!--详细信息的内容开始-->
			<div class="ei_con">
				<!--出租方式开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>出租方式</label>
					</div>
					<!--单选框开始-->
					<div class="field_radio">
						<div class="radio radio_per">
							<label style="margin-top: 10px;">
								<input class="radio_per_css" type="radio" name="rental_mode" id="optionsRadios1" value="整租" checked> 整租
							</label>
						</div>
						<div class="radio radio_per">
							<label style="margin-top: 25px;">
								<input class="radio_per_css" type="radio" name="rental_mode" id="optionsRadios2" value="合租">合租
							</label>
						</div>
					</div>
					<!--单选框结束-->
				</div>
				<!--出租方式结束-->
				<!--小区名称开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>小区名称</label>
					</div>
					<div class="field_frame">
						<input id="inp_css" type="text" name="village_name" value="${house.village_name }"/>
					</div>
				</div>
				<!--小区名称结束-->
				
				<!--详细地址开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>地址信息</label>
					</div>
					<div class="field_frame">
						<select class="select_css" name="address"> 
							<option value="${house.address }">${house.address }</option>
							<option value="尖草坪区">尖草坪区</option> 
							<option value="迎泽区">迎泽区</option>
							<option value="万柏林区">万柏林区</option>
						</select> 
					</div>
				</div>
				<!--详细地址结束-->
				
				<!--房屋户型开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>房屋户型</label>
					</div>
					<div class="field_frame">
						<input class="house_units" type="text" name="house_room" value="${house.house_room }"/>
						<p class="unit_p">室</p>
						<input class="house_units" type="text" name="living_room" value="${house.living_room }"/>
						<p class="unit_p">厅</p>
						<input class="house_units" type="text" name="house_toilet" value="${house.house_toilet }"/>
						<p class="unit_p">卫</p>
					</div>
				</div>
				<!--房屋户型结束-->
				
				<!--房屋面积开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>房屋面积</label>
					</div>
					<div class="field_frame">
						<input class="house_units" type="text" name="house_area" value="${house.house_area }" />
						<p class="unit_p">平米</p>
					</div>
				</div>
				<!--房屋面积结束-->
				
				<!--房屋情况开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>房屋情况</label>
					</div>
					<div class="field_frame">
						<select name="house_direction" class="select_css">
							<option>${house.house_direction }</option>
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
						<select name="decoration" class="select_css">
							<option>${house.decoration}</option>
							<option>装修情况</option>
							<option>豪华装修</option>
							<option>精装修</option>
							<option>中等装修</option>
							<option>普通装修</option>
							<option>毛坯</option>
						</select>
						<select name="house_type" class="select_css">
							<option>${house.house_type }</option>
							<option>普通住宅</option>
							<option>公寓</option>
							<option>别墅</option>
							<option>平房</option>
							<option>酒店公寓</option>
							<option>商住两用</option>
						</select>
					</div>
				</div>
				<!--房屋情况结束-->
				<!--租金要求开始-->
				<div class="rel_room_field">
					<span>*</span>
					<div class="label_css">
						<label>租金要求</label>
					</div>
					<div class="field_frame">
						<input class="house_units" type="text" name="rental" value="${house.rental }"/>
						<p class="unit_p">元/月</p>
					</div>
				</div>
				<!--租金要求结束-->
			</div>
			<!--详细信息的内容结束-->
		</div>
		<!--房屋基本信息结束-->
		
				
				
			</div>
		</div>
		<!--房源描述及上传图片-->
		<!--提交按钮开始-->
		<div class="infor_bt_css" style="float:left;">
			<button type="submit">发布信息</button>
		</div>
		</form>
		<!--提交按钮结束-->

	</div>
	</div>
	<!--填写详细信息结束-->
    <!-- 导入页面尾文件开始 -->
    <jsp:include page="footer.jsp"/>
    <!-- 导入页面尾文件结束 -->
  </body>
</html>
