package com.hyn.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.hyn.domain.Dict;

public interface DictService {
	public static final String SERVER_NAME = "com.hyn.service.impl.DictServiceImpl";
	//插入数据
	public void insertDictService(Dict dict);
	//查询数据：通过id查询数据
	public Dict getDictById(int id);
	//查询数据：查询所有所属类型
	public List<String> getAllDict();
	//查询数据：通过data_pared(所属父级元素)查询数据
	public List<Dict> getDictByParedList(int data_pared);
	//查询数据：通过data_type(所属类型)查询
	public List<Dict> getDictByTypeList(String data_type);
	//查询数据：通过did查询包括权限信息的所有信息
	public Dict getFunctionByDid(int id);
	//查询数据：分页查询
	public List<Dict> getDictPageService(RowBounds rowBounds);
	//删除数据：通过id删除
	public void deleteDictByIdService(int id);
	//修改数据：通过id修改
	public void updateDictById(Dict dict);
}
