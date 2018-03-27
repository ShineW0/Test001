package com.hyn.controller.user.house;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.service.HouseService;

@Controller
public class HouseDeleteController {
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	@RequestMapping(value="deleteHouseByHouseId.do")
	public String deleteHouseById(@RequestParam int house_id){
		houseService.deleteHouseById(house_id);
		return "user_person_room.jsp";
	}
}
