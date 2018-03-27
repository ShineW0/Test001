package com.hyn.controller.user;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.House;
import com.hyn.domain.User;
import com.hyn.service.HouseService;
import com.hyn.service.UserService;

/**
 * 修改用户信息的控制器
 * @author Administrator
 *
 */
@Controller
public class UserUpdateController {
	@Resource(name=UserService.SERVER_NAME)
	private UserService userService;
	@Resource(name=HouseService.SERVER_NAME)
	private HouseService houseService;
	@RequestMapping(value="/adminUserUpdate.do")
	public String adminUserUpdate(@ModelAttribute User user){
		System.out.println(user.getAge());
		userService.updateUserById(user);
		return "admin_user_data_update.jsp";
	}
	
	//用户信息的修改
	@RequestMapping(value="/updateUserById.do")
	public String updateUserById(@ModelAttribute User user){
		userService.updateUserById(user);
		return "user_update_success.jsp";
	}
	
}
