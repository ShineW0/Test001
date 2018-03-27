package com.hyn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.hyn.dao.DictDao;
import com.hyn.domain.Dict;
import com.hyn.service.DictService;

/**
 * 数据字典服务层service的实现类
 * @author Administrator
 *
 */
@Service(DictService.SERVER_NAME)
public class DictServiceImpl implements DictService{
	@Resource(name=DictDao.SERVER_NAME)
	private DictDao dictDao;
	public void insertDictService(Dict dict) {
		dictDao.insertDict(dict);
	}
	//查询数据：通过id查询数据
	public Dict getDictById(int id) {
		return dictDao.getDictById(id);
	}
	//查询数据：查询所有数据
	public List<String> getAllDict() {
		return dictDao.getAllDict();
	}
	//查询数据：通过data_pared(所属父级元素)查询数据
	public List<Dict> getDictByParedList(int data_pared) {
		return dictDao.getDictByParedList(data_pared);
	}
	//查询数据：通过data_type(所属类型)查询
	public List<Dict> getDictByTypeList(String data_type) {
		return dictDao.getDictByTypeList(data_type);
	}
	//查询数据：通过did查询包括权限在内的信息
	public Dict getFunctionByDid(int id) {
		return dictDao.getDictFunction(id);
	}
	//查询数据：分页查询
	public List<Dict> getDictPageService(RowBounds rowBounds) {
		return dictDao.getDictPage(rowBounds);
	}
	//删除数据：通过id删除
	public void deleteDictByIdService(int id) {
		dictDao.deleteDictById(id);
	}
	//修改数据：通过id修改
	public void updateDictById(Dict dict) {
		dictDao.updateDictById(dict);
	}
}
