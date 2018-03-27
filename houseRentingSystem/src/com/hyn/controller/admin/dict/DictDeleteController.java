package com.hyn.controller.admin.dict;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.service.DictService;

@Controller
public class DictDeleteController {
	@Resource(name=DictService.SERVER_NAME)
	private DictService dictService;
	@RequestMapping(value="deleteDictById.do")
	public String deleteDictById(@RequestParam int dict_id){
		dictService.deleteDictByIdService(dict_id);
		return "dict.do";
	}
}
