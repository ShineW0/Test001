package com.hyn.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.hyn.domain.Dict;

/**
 * 数据字典的接口
 * @author Administrator
 *
 */
public interface DictDao {
	public static final String SERVER_NAME = "com.hyn.dao.impl.DictDaoImpl";
	//插入数据字典的数据
	public void insertDict(Dict dict);
	//查询数据：通过id查询
	public Dict getDictById(int id);
	//查询数据：查询所有所属类型
	public List<String> getAllDict();
	//查询数据：通过data_pared（父级元素）查询
	public List<Dict> getDictByParedList(int data_pared);
	//查询数据：通过data_type(所属类型)查询
	public List<Dict> getDictByTypeList(String data_type);
	//查询数据：通过id查询数据字典所有的管理员及权限
	public Dict getDictFunction(int id);
	//查询数据：分页查询
	public List<Dict> getDictPage(RowBounds rowBounds);
	//删除数据：通过id删除
	public void deleteDictById(int id);
	//修改数据：通过id修改数据
	public void updateDictById(Dict dict);
}
