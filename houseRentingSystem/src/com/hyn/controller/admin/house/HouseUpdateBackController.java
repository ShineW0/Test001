package com.hyn.controller.admin.house;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.House;
import com.hyn.domain.User;
import com.hyn.service.HouseService;
import com.hyn.service.UserService;

@Controller
public class HouseUpdateBackController {
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	@Resource(name=UserService.SERVER_NAME)
	private UserService userService;
	@RequestMapping(value="getHouseBackByHouseId.do")
	public String updateHouseBackByHouseId(@RequestParam int house_id,
										   HttpServletRequest request){
		House house = houseService.getHouseById(house_id);
		//查看发布信息的用户
		User us = userService.getUserById(house.getU_id());
		request.setAttribute("house", house);
		request.setAttribute("us", us);
		return "admin_room_update.jsp";
	}
	@RequestMapping(value="updateHouseImgBack.do")
	protected void service(
						   HttpServletRequest request, 
						   HttpServletResponse response)
			throws ServletException, IOException {
		//编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String savePath = request.getSession().getServletContext().getRealPath("upload");
		System.out.println(savePath);
		String fileName = "";
		String value = "";
		List<String> fileNames = new ArrayList<String>();
		try{
			//上传文件
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload fileUpload = new ServletFileUpload(factory);
			//获得文件
			List<FileItem> fileItem = fileUpload.parseRequest(request);
			
			
			for(FileItem item : fileItem){
				//如果是表单数据
				if(item.isFormField()){
					String house_id = item.getFieldName();
					System.out.println(house_id);
					value = item.getString();
					System.out.println(value);
				}
				//如果是文件数据
				else{
					//获得文件名
					fileName = item.getName();
					fileNames.add(fileName);
					//
					File file = new File(savePath +"\\"+ fileName);
					//输入流
					InputStream input = item.getInputStream();
					//输出流保存数据
					FileOutputStream fos = new FileOutputStream(file);
					//读取文件
					//缓存
					byte[] buffer = new byte[1024];
					int len = 0;
					while((len=input.read(buffer))!=-1){
						fos.write(buffer,0,len);
					}
					//关闭流
					fos.flush();
					fos.close();
					input.close();
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		int house_id = Integer.parseInt(value);
		House house = houseService.getHouseById(house_id);
		User us = userService.getUserById(house.getU_id());
		request.setAttribute("us", us);
		request.setAttribute("house", house);
		request.setAttribute("fileName", fileName);
		request.setAttribute("fileNames", fileNames);
		request.setAttribute("file01", fileNames.get(0));
		request.setAttribute("file02", fileNames.get(1));
		request.setAttribute("file03", fileNames.get(2));
		request.getRequestDispatcher("admin_room_update.jsp").forward(request, response);
	}
	//上传结束
	//插入房间信息
	@RequestMapping(value="/updateHouseBack.do")
	public String insertHouse(@ModelAttribute House house){
		houseService.updateHouseById(house);
		return "queryHouse.do";
	}
}
