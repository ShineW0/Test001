package com.hyn.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.hyn.domain.User;

public interface UserDao {
	public static final String SERVER_NAME = "com.hyn.dao.impl.UserDaoImpl";
	//用户登录
	public int loginUser(User user);
	//用户注册
	public void registUser(User user);
	//查询数据：通过id查询
	public User getUserById(int id);
	//查询数据：通过用户名、密码、用户类型查询数据
	public User getUserByUpt(User user);
	//查询数据：分页查询
	public List<User> getUserPage(RowBounds rowBounds);
	//删除数据：通过id删除
	public void deleteUserById(int id);
	//修改数据：通过id修改
	public void updateUserById(User user);
}
