package com.hyn.controller.admin.house;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.House;
import com.hyn.service.HouseService;

@Controller
public class HouseSelectBackController {
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	@RequestMapping(value="queryHouse.do")
	public String getHousePage(HttpServletRequest request){
		int pageIndex_house = 1;
		int pageNum_house = 7;
		RowBounds rowBounds = new RowBounds((pageIndex_house-1)*pageNum_house, pageNum_house);
		List<House> houseList = houseService.getHousePage(rowBounds);
		request.setAttribute("houseList", houseList);
		request.setAttribute("pageIndex_house", pageIndex_house);
		request.setAttribute("pageNum_house", pageNum_house);
		return "admin_room_update_query_delete.jsp";
	}
	
	//分页查询的controller
	@RequestMapping(value="getHousePageBack.do")
	public String getHousePage(@RequestParam int pageIndex_house,
							   @RequestParam int pageNum_house,
							   HttpServletRequest request){
		RowBounds rowBounds = new RowBounds((pageIndex_house-1)*pageNum_house, pageNum_house);
		List<House> houseList = houseService.getHousePage(rowBounds);
		request.setAttribute("pageIndex_house", pageIndex_house);
		request.setAttribute("pageNum_house", pageNum_house);
		request.setAttribute("houseList", houseList);
		return "admin_room_update_query_delete.jsp";
	}
}
