package com.hyn.controller.user;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.hyn.domain.Dict;
import com.hyn.domain.User;
import com.hyn.service.DictService;
import com.hyn.service.UserService;

@Controller
public class UserLoginRegistController {
	@Resource(name=UserService.SERVER_NAME)
	private UserService userService;
	@Resource(name=DictService.SERVER_NAME)
	private DictService dictService;
	//用户登录注册之前
	@RequestMapping(value="userLoginRegist.do")
	public String loginRegistBefore(HttpServletRequest request){
		//查询性别
		List<Dict> sexList = dictService.getDictByTypeList("sex");
		//查询管理员
		List<Dict> manageList = dictService.getDictByTypeList("manage");
		request.setAttribute("sexList", sexList);
		request.setAttribute("manageList", manageList);
		return "login_regist.jsp";
	}
	//用户登录
	@RequestMapping(value="/login.do")
	public String login(@RequestParam String userName,
						@RequestParam String passWord,
						@RequestParam String type,
						HttpServletRequest request){
		User user = new User(userName,passWord,type);
		User u = userService.getUserByUpt(user);
		HttpSession session = request.getSession();
		boolean flag = userService.loginUser(user);
		if(flag){
			if(type.equals("超级管理员")||type.equals("区域管理员")){
				session.setAttribute("user", u);
				return "admin_manage_room_insert.jsp";
			}else{
				session.setAttribute("user", u);
				return "index.jsp";
			}
		}else{
			return "login_regist.jsp";
		}
	}
	//用户注册
	@RequestMapping(value="/regist.do")
	public String regist(@ModelAttribute User user,
						 HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		System.out.println(user.getUserName());
		userService.regist(user);
		return "index.jsp";
	}
	@RequestMapping(value="/selectUser.do")
	public String getUserPage(HttpServletRequest request){
		int pageIndex_user = 1;
		int pageNum_user = 7;
		RowBounds rowBounds = new RowBounds((pageIndex_user-1)*pageNum_user,pageNum_user);
		List<User> userList = userService.getUserPage(rowBounds);
		request.setAttribute("userList", userList);
		request.setAttribute("pageIndex_user", pageIndex_user);
		request.setAttribute("pageNum_user", pageNum_user);
		return "admin_user_update_query_delete.jsp";
	}
	//后台注册页面
	@RequestMapping(value="/backstage_regist.do")
	public String backstage_regist(@ModelAttribute User user,
			 HttpServletRequest request){
		System.out.println(user.getUserName());
		userService.regist(user);
		return "selectUser.do";
	}
	//安全退出
	@RequestMapping(value="/safeExit.do")
	public String safeExit(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
		return "index.jsp";
	}
}