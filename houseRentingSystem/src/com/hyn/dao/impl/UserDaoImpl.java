package com.hyn.dao.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.stereotype.Repository;

import com.hyn.dao.UserDao;
import com.hyn.domain.User;
import com.hyn.mapper.UserMapper;
import com.hyn.util.MybatisFactoryUtil;

@Repository(UserDao.SERVER_NAME)
public class UserDaoImpl implements UserDao{
	//创建一个会话
	private SqlSession session = MybatisFactoryUtil.getSf().openSession(true);
	private UserMapper userMapper = session.getMapper(UserMapper.class);
	//用户登录
	public int loginUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.loginUser(user);
	}
	//注册用户
	public void registUser(User user) {
		userMapper.insertUser(user);
	}
	//查询数据：通过id查询
	public User getUserById(int id) {
		return userMapper.getUserById(id);
	}
	//查询数据：通过用户名、密码、用户类型查询数据
	public User getUserByUpt(User user) {
		return userMapper.getUserByUpt(user);
	}
	//查询数据：分页查询
	public List<User> getUserPage(RowBounds rowBounds) {
		return userMapper.getPageUser(rowBounds);
	}
	//删除数据：通过id删除
	public void deleteUserById(int id) {
		userMapper.deleteUserById(id);
	}
	//修改数据：通过id修改
	public void updateUserById(User user) {
		userMapper.updateUserById(user);
	}


}
