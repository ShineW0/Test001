package com.hyn.controller.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyn.domain.User;
import com.hyn.service.HouseService;
import com.hyn.service.UserService;

@Controller
public class UserDeleteController {

	@Resource(name=UserService.SERVER_NAME)
	private UserService userService;
	//用户信息的删除
	
		@RequestMapping(value="/deleteUserById.do")
		public String deleteUserById(@RequestParam int user_id,
				  HttpServletRequest request){
			
			userService.deleteUserById(user_id);
			
			return "selectUser.do";
			
		}
}
