package com.hyn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.hyn.domain.Dict;
import com.hyn.domain.Function;

/**
 * 对数据字典的操作
 * 增加数据
 * @author Administrator
 *
 */
public interface DictMapper {

	//增加数据字典
	@Insert("insert into dict(data_name, data_code, data_type, data_pared) values(#{data_name},#{data_code},#{data_type},#{data_pared})")
	public void insertData(Dict dict);
	//查询数据：通过id查询数据
	@Select("select id, data_name, data_code, data_type, data_pared from dict where id=#{id}")
	public Dict getDictById(int id);
	//查询数据：查询所有所属类型
	@Select("select distinct data_type from dict")
	public List<String> getDictAll();
	//查询数据：通过所属父目录查询数据
	@Select("select id, data_name, data_code, data_type, data_pared from dict where data_pared=#{data_pared}")
	public List<Dict> getDictByParedList(int data_pared);
	//查询数据：通过data_type(所属类型)查询数据
	@Select("select * from dict where data_type=#{data_type}")
	public List<Dict> getDictByDtype(String data_type);
	//查询数据：通过did查询权限
	@Select("select id,fun_name,did,state from function f, dict d where d.id=f.did")
	public List<Function> getFunctionById(int did);
	//查询数据字典：分页查询
	@Select("select id,data_name,data_code,data_type,data_pared from dict order by id desc")
	public List<Dict> getDictPage(RowBounds rowBounds);
	//删除数据：通过id删除数据
	@Delete("delete from dict where id = #{id}")
	public void deleteDictById(int id);
	//修改数据：通过id修改
	@Update("update dict set data_name=#{data_name}, data_code=#{data_code}, data_type=#{data_type}, data_pared=#{data_pared} where id=#{id}")
	public void updateDict(Dict dict);
}
