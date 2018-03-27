package com.hyn.controller.user.house;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.House;
import com.hyn.service.HouseService;

@Controller
public class HouseSelectNavController {
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	//最满意、最不满意的部分
	//增删改查
	@RequestMapping(value="selectHouseByAddress.do")
	public String getHouseByAddress(@RequestParam String addre,
									HttpServletRequest request){
		//java页面静态化
		List<House> houseList = houseService.getHouseByAddreess(addre);
		request.setAttribute("houseList", houseList);
		return "room_index.jsp";
	} 
}
