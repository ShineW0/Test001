package com.hyn.controller.admin.house;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.service.HouseService;

@Controller
public class HouseDeleteBackController {
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	@RequestMapping(value="deleteHouseBackByHouseId.do")
	public String deleteHouseBackByHouseId(@RequestParam int house_id){
		houseService.deleteHouseById(house_id);
		return "queryHouse.do";
	}
}
