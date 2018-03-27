package com.hyn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.hyn.domain.User;

public interface UserMapper {

	//用户登录
	@Select("select count(*) from user where userName=#{userName} and passWord=#{passWord} and type=#{type}")
	public int loginUser(User user);
	//注册用户
	@Insert("insert into user(userName,passWord,type,age,sex,email,phone) values(#{userName},#{passWord},#{type},#{age},#{sex},#{email},#{phone})")
	public void insertUser(User user);
	//查询数据：通过id查询
	@Select("select id,userName,passWord,type,age,sex,email,phone from user where id=#{id}")
	public User getUserById(int id);
	//查询数据：通过用户名、密码、用户类型查询用户的所有信息
	@Select("select * from user where userName=#{userName} and passWord=#{passWord} and type=#{type}")
	public User getUserByUpt(User user);
	//查询数据：分页查询
	@Select("select id,userName,passWord,type,age,sex,email,phone from user order by id desc")
	public List<User> getPageUser(RowBounds rowBounds);
	//删除数据：通过id删除
	@Update("delete from user where id=#{id}")
	public void deleteUserById(int id);
	//修改数据：通过id修改
	@Update("update user set userName=#{userName}, passWord=#{passWord}, type=#{type}, age=#{age}, sex=#{sex}, email=#{email}, phone=#{phone} where id=#{id}")
	public void updateUserById(User user);
}
