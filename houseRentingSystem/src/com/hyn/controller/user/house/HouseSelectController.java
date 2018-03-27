package com.hyn.controller.user.house;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.House;
import com.hyn.domain.User;
import com.hyn.service.HouseService;
import com.hyn.service.UserService;

@Controller
public class HouseSelectController {
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	@Resource(name=UserService.SERVER_NAME)
	private UserService userService;
	@RequestMapping(value="getHouseById.do")
	public String getHouseById(@RequestParam int house_id,
							   HttpServletRequest request){
		House house = houseService.getHouseById(house_id);
		System.out.println(house.getU_id());
		User us = userService.getUserById(house.getU_id());
		request.setAttribute("house", house);
		request.setAttribute("us", us);
		return "room_per.jsp";
	}
	//进入room_index.jsp要经过的controller
	@RequestMapping(value="roomIndex.do")
	public String getAllHouse(HttpServletRequest request){
		int pageIndex_house = 1;
		int pageNum_house = 7;
		RowBounds rowBounds = new RowBounds((pageIndex_house-1)*pageNum_house, pageNum_house);
		List<House> houseList = houseService.getHousePage(rowBounds);
		request.setAttribute("pageIndex_house", pageIndex_house);
		request.setAttribute("pageNum_house", pageNum_house);
		request.setAttribute("houseList", houseList);
		return "room_index.jsp";
	}
	
	//分页查询的controller
	@RequestMapping(value="getHousePage.do")
	public String getHousePage(@RequestParam int pageIndex_house,
							   @RequestParam int pageNum_house,
							   HttpServletRequest request){
		RowBounds rowBounds = new RowBounds((pageIndex_house-1)*pageNum_house, pageNum_house);
		List<House> houseList = houseService.getHousePage(rowBounds);
		request.setAttribute("pageIndex_house", pageIndex_house);
		request.setAttribute("pageNum_house", pageNum_house);
		request.setAttribute("houseList", houseList);
		return "room_index.jsp";
	}
	
	//通过u_id查询房间信息
	@RequestMapping(value="/getHouseByUId.do")
	public String getHouseByUId(@RequestParam int u_id,
								HttpServletRequest request){
		List<House> houseList = houseService.getHouseByUId(u_id);
		request.setAttribute("houseList", houseList);
		return "user_person_room.jsp";
	}
	//通过u_id查询房间信息,修改信息后跳转
	@RequestMapping(value="/getHouseByUIdSkip.do")
	public String getHouseByUIdSkip(@RequestParam int u_id,
								HttpServletRequest request){
		List<House> houseList = houseService.getHouseByUId(u_id);
		request.setAttribute("houseList", houseList);
		HttpSession session = request.getSession();
		User user = userService.getUserById(u_id);
		session.setAttribute("user", user);
		return "user_person_room.jsp";
	}
}
