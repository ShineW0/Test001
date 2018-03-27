package com.hyn.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.hyn.domain.House;

/**
 * 房屋操作的服务层service
 * @author Administrator
 *
 */
public interface HouseService {
	public static final String SERVER_NAME = "com.hyn.service.impl.HouseServiceImpl";
	//插入数据
	public void insertHouse(House house);
	//查询数据：通过id查询
	public House getHouseById(int id);
	//查询数据：通过u_id查询
	public List<House> getHouseByUId(int u_id);
	//查询数据：通过address（地址）查询
	public List<House> getHouseByAddreess(String address);
	//查询数据：通过house_room(几居室)查询
	public List<House> getHouseByRoomLivingNum(int house_room);
	//查询数据：通过price(价格)来查询
	public List<House> getHouseByPrice(int rental_min, int rental_max);
	//查询数据：分页查询
	public List<House> getHousePage(RowBounds rowBounds);
	//删除数据：通过id删除
	public void deleteHouseById(int id);
	//修改数据：通过id修改
	public void updateHouseById(House house);
}
