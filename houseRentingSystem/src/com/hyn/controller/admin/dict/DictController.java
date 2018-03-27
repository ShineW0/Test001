package com.hyn.controller.admin.dict;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.Dict;
import com.hyn.service.DictService;

/**
 * 数据字典的控制器
 * @author Administrator
 *
 */
@Controller
public class DictController {
	@Resource(name=DictService.SERVER_NAME)
	private DictService dictService;
	@RequestMapping(value="/insertDict.do")
	public String insertDict(@ModelAttribute Dict dict,
							 HttpServletRequest request){
		dictService.insertDictService(dict);
		return "dict.do";
	}
	
	@RequestMapping(value="dict.do")
	public String dictDo(HttpServletRequest request){
		int pageIndex_dict = 1;
		int pageNum_dict = 7;
		RowBounds rowBounds = new RowBounds((pageIndex_dict-1)*pageNum_dict,pageNum_dict);
		List<Dict> dictList = dictService.getDictPageService(rowBounds);
		//查询父级元素
		List<Dict> paredList = dictService.getDictByParedList(0);
		List<String> typeList = dictService.getAllDict();
		request.setAttribute("typeList", typeList);
		request.setAttribute("paredList", paredList);
		request.setAttribute("dictList", dictList);
		request.setAttribute("pageIndex_dict", pageIndex_dict);
		return "admin_dict_update_query_delete.jsp";
	}
	
}

