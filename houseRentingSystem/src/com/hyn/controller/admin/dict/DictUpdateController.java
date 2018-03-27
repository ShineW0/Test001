package com.hyn.controller.admin.dict;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyn.domain.Dict;
import com.hyn.service.DictService;

@Controller
public class DictUpdateController {
	@Resource(name=DictService.SERVER_NAME)
	private DictService dictService;
	@RequestMapping(value="updateDictById.do")
	public String updateDictById(@ModelAttribute Dict dict){
		System.out.println(dict.getData_name());
		dictService.updateDictById(dict);
		return "admin_dict_data_update.jsp";
	}
}
