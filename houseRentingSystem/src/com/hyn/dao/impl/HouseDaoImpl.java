package com.hyn.dao.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hyn.dao.HouseDao;
import com.hyn.domain.House;
import com.hyn.mapper.HouseMapper;
import com.hyn.util.MybatisFactoryUtil;

/**
 * 房间dao层的实现类
 * @author Administrator
 *
 */
@Repository(HouseDao.SERVER_NAME)
public class HouseDaoImpl implements HouseDao{
	SqlSession session = MybatisFactoryUtil.getSf().openSession(true);
	HouseMapper houseMapper = session.getMapper(HouseMapper.class);
	//插入数据
	public void insertHouse(House house) {
		System.out.println("yes housemapper");
		houseMapper.insertHouse(house);
		
	}
	//查询数据：通过id查询
	public House getHouseById(int id) {
		return houseMapper.getHouseById(id);
	}
	//查询数据：通过u_id查询
	public List<House> getHouseByUId(int u_id) {
		return houseMapper.getHouseByU_id(u_id);
	}
	//查询数据：通过address地址查询房间信息
	public List<House> getHouseByAddreess(String address) {
		return houseMapper.getHouseByAddreess(address);
	}
	//查询数据：通过房间的几室几厅来查询
	public List<House> getHouseByRoomLivingNum(int house_room) {
		return houseMapper.getHouseByRoomLivingNum(house_room);
	}
	//查询数据：通过房间的价格查询数据
	public List<House> getHouseByPrice(int rental_min, int rental_max) {
		return houseMapper.getHouseByPrice(rental_min, rental_max);
	}
	//查询数据：分页查询
	public List<House> getHousePage(RowBounds rowBounds) {
		return houseMapper.getHousePage(rowBounds);
	}
	//删除数据：通过id删除
	public void deleteHouseById(int id) {
		houseMapper.deleteHouseById(id);
	}
	//修改数据：通过id修改
	public void updateHouseById(House house) {
		houseMapper.updateHouseById(house);
	}
}
