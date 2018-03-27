package com.hyn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.hyn.domain.House;

/**
 * house的mapper层
 * @author Administrator
 *
 */
public interface HouseMapper {

	//插入数据：
	@Insert("insert into house(rental_mode, village_name, address, house_room, living_room, house_toilet, house_direction, decoration, house_type, rental, house_title, house_intro, image1,image2,image3,u_id,house_area) values(#{rental_mode}, #{village_name}, #{address},#{house_room},#{living_room},#{house_toilet},#{house_direction},#{decoration},#{house_type},#{rental},#{house_title},#{house_intro},#{image1},#{image2},#{image3},#{u_id},#{house_area})")
	public void insertHouse(House house);
	//查询数据：通过id查询
	@Select("select * from house where id=#{id}")
	public House getHouseById(int id);
	//查询数据：通过u_id查询
	@Select("select * from house where u_id=#{u_id}")
	public List<House> getHouseByU_id(int u_id);
	//查询数据：通过address（地址）查询
	@Select("select * from house where address=#{address}")
	public List<House> getHouseByAddreess(String address);
	//查询数据：通过house_room(几居室)查询
	@Select("select * from house where house_room=#{house_room}")
	public List<House> getHouseByRoomLivingNum(int house_room);
	//查询数据：通过price(价格)来查询
	@Select("select * from house where rental between #{0} and #{1}")
	public List<House> getHouseByPrice(int rental_min, int rental_max);
	//查询数据：分页查询
	@Select("select * from house order by id desc")
	public List<House> getHousePage(RowBounds rowBounds);
	//删除数据：通过id删除
	@Delete("delete from house where id=#{id}")
	public void deleteHouseById(int id);
	//修改数据：通过id修改
	@Update("update house set rental_mode=#{rental_mode}, village_name=#{village_name}, address=#{address}, house_room=#{house_room}, living_room=#{living_room}, house_toilet=#{house_toilet}, house_direction=#{house_direction}, decoration=#{decoration}, house_type=#{house_type}, rental=#{rental}, house_title=#{house_title}, house_intro=#{house_intro}, image1=#{image1}, image2=#{image2}, image3=#{image3}, u_id=#{u_id}, house_area=#{house_area} where id=#{id}")
	public void updateHouseById(House house);
}