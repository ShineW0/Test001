package com.hyn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.hyn.dao.HouseDao;
import com.hyn.domain.House;
import com.hyn.service.HouseService;

@Service(HouseService.SERVER_NAME)
public class HouseServiceImpl implements HouseService{
	@Resource(name=HouseDao.SERVER_NAME)
	private HouseDao houseDao;
	//插入数据
	public void insertHouse(House house) {
		houseDao.insertHouse(house);
	}
	//查询数据：通过id查询
	public House getHouseById(int id) {
		return houseDao.getHouseById(id);
	}
	//查询数据：通过u_id查询
	public List<House> getHouseByUId(int u_id) {
		return houseDao.getHouseByUId(u_id);
	}
	//查询数据：通过address地址查询
	public List<House> getHouseByAddreess(String address) {
		return houseDao.getHouseByAddreess(address);
	}
	//查询数据：通过几室几厅查询
	public List<House> getHouseByRoomLivingNum(int house_room) {
		return houseDao.getHouseByRoomLivingNum(house_room);
	}
	//查询数据：通过price价格查询
	public List<House> getHouseByPrice(int rental_min, int rental_max) {
		return houseDao.getHouseByPrice(rental_min, rental_max);
	}
	//查询数据：分页查询
	public List<House> getHousePage(RowBounds rowBounds) {
		return houseDao.getHousePage(rowBounds);
	}
	//删除数据：通过id删除
	public void deleteHouseById(int id) {
		houseDao.deleteHouseById(id);
	}
	//修改数据：通过id修改
	public void updateHouseById(House house) {
		houseDao.updateHouseById(house);
	}
}
