package com.hyn.controller.admin.dict;
/**
 * 数据字典查询的控制器
 */
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.Dict;
import com.hyn.domain.Function;
import com.hyn.service.DictService;

@Controller
public class DictSelectController {
	@Resource(name=DictService.SERVER_NAME)
	private DictService dictService;
	//查询数据：通过id查询数据
	@RequestMapping(value="getDictById.do")
	public String getDictById(@RequestParam int dict_id,
							  HttpServletRequest request){
		Dict dict = dictService.getDictById(dict_id);
		request.setAttribute("dict", dict);
		System.out.println(dict.getData_type());
		return "admin_dict_data_update.jsp";
	}
	
	//查询数据：分页查询
	@RequestMapping(value="getDictPage.do")
	public String getDictPage(@RequestParam int pageIndex_dict,
							  @RequestParam int pageNum_dict,
							  HttpServletRequest request){
		RowBounds rowBounds = new RowBounds((pageIndex_dict-1)*pageNum_dict, pageNum_dict);
		List<Dict> dictList = dictService.getDictPageService(rowBounds);
		request.setAttribute("dictList", dictList);
		List<Dict> paredList = dictService.getDictByParedList(0);
		List<String> typeList = dictService.getAllDict();
		request.setAttribute("typeList", typeList);
		request.setAttribute("paredList", paredList);
		request.setAttribute("pageIndex_dict", pageIndex_dict);
		request.setAttribute("pageNum_dict", pageNum_dict);
		return "admin_dict_update_query_delete.jsp";
	}
	//查询所有管理员及其权限
	@RequestMapping(value="/getFunctionByDid.do")
	public String getFunctionByDid(HttpServletRequest request){
		Dict dict = dictService.getFunctionByDid(3);
		request.setAttribute("dict", dict);
		return "admin_user_power.jsp";
	}
}
