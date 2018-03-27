package com.hyn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.hyn.dao.UserDao;
import com.hyn.domain.User;
import com.hyn.service.UserService;

@Service(UserService.SERVER_NAME)
public class UserServiceImpl implements UserService{
	@Resource(name=UserDao.SERVER_NAME)
	private UserDao userDao;
	public boolean loginUser(User user) {
		int num = userDao.loginUser(user);
		if(num==1){
			return true;
		}else{
			return false;
		}
	}
	//插入数据：注册用户
	public void regist(User user) {
		userDao.registUser(user);
	}
	//查询数据：通过id查询
	public User getUserById(int id) {
		return userDao.getUserById(id);
	}
	//查询数据：通过用户名、密码、用户类型查询
	public User getUserByUpt(User user) {
		return userDao.getUserByUpt(user);
	}
	//查询数据：分页查询
	public List<User> getUserPage(RowBounds rowBounds) {
		return userDao.getUserPage(rowBounds);
	}
	//删除数据：通过id删除
	public void deleteUserById(int id) {
		userDao.deleteUserById(id);
	}
	public void updateUserById(User user) {
		userDao.updateUserById(user);
	}

}
