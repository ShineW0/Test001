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

import com.hyn.domain.House;
import com.hyn.service.HouseService;

/**
 * 添加房间信息的控制器
 * @author Administrator
 *
 */
@Controller
public class HouseInsertController {
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	@RequestMapping(value="uploadHouseImg.do")
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String savePath = request.getSession().getServletContext().getRealPath("upload");
		System.out.println(savePath);
		String fileName = "";
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
					String userName = item.getFieldName();
					System.out.println(userName);
					String value = item.getString();
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
		request.setAttribute("fileName", fileName);
		request.setAttribute("fileNames", fileNames);
		request.setAttribute("file01", fileNames.get(0));
		request.setAttribute("file02", fileNames.get(1));
		request.setAttribute("file03", fileNames.get(2));
		request.getRequestDispatcher("admin_manage_room_insert.jsp").forward(request, response);
	}
	//上传结束
	//插入房间信息
	@RequestMapping(value="/insertHouse.do")
	public String insertHouse(@ModelAttribute House house){
		System.out.println("yes controller");
		System.out.println(house.getVillage_name());
		houseService.insertHouse(house);
		
		
		return "admin_manage_room_insert.jsp";
	}
	
}
