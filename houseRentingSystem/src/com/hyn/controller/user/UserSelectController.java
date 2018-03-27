package com.hyn.controller.user;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.User;
import com.hyn.service.UserService;

/**
 * 用户查询的控制器
 * @author Administrator
 *
 */
@Controller
public class UserSelectController {
	@Resource(name=UserService.SERVER_NAME)
	private UserService userService;
	@RequestMapping(value="/getUserPage.do")
	public String getUserPage(@RequestParam int pageIndex_user,
							  @RequestParam int pageNum_user,
							  HttpServletRequest request){
		RowBounds rowBounds = new RowBounds((pageIndex_user-1)*pageNum_user,pageNum_user);
		List<User> userList = userService.getUserPage(rowBounds);
		request.setAttribute("pageIndex_user", pageIndex_user);
		request.setAttribute("pageNum_user", pageNum_user);
		request.setAttribute("userList", userList);
		return "admin_user_update_query_delete.jsp";
	}
	
	@RequestMapping(value="/getUserById.do")
	public String getUserById(@RequestParam int user_id,
							  HttpServletRequest request){
		User user = userService.getUserById(user_id);
		System.out.println(user_id);
		request.setAttribute("user", user);
		return "admin_user_data_update.jsp";
	}
}
