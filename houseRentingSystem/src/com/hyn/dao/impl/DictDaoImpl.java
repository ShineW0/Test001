package com.hyn.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hyn.dao.DictDao;
import com.hyn.dao.UserDao;
import com.hyn.domain.Dict;
import com.hyn.domain.Function;
import com.hyn.domain.User;
import com.hyn.mapper.DictMapper;
import com.hyn.util.MybatisFactoryUtil;

/**
 * 数据字典dao层的实现类
 * @author Administrator
 *
 */
@Repository(DictDao.SERVER_NAME)
public class DictDaoImpl implements DictDao{
	//创建一个会话，并开启事务
	private SqlSession session = MybatisFactoryUtil.getSf().openSession(true);
	private DictMapper dictMapper = session.getMapper(DictMapper.class);
	public void insertDict(Dict dict) {
		dictMapper.insertData(dict);
	}
	//查询数据：通过id查询数据
	public Dict getDictById(int id) {
		return dictMapper.getDictById(id);
	}
	//查询数据：查询所有数据
	public List<String> getAllDict() {
		return dictMapper.getDictAll();
	}
	//查询数据：通过data_pared（所属父级元素查询）
	public List<Dict> getDictByParedList(int data_pared) {
		return dictMapper.getDictByParedList(data_pared);
	}
	//查询数据：通过id查询包括权限的信息
	public Dict getDictFunction(int id) {
		Dict dict = session.selectOne("com.hyn.domain.queryFunctionByDid",id);
		return dict;
	}
	//查询数据：通过daata_type查询
		public List<Dict> getDictByTypeList(String data_type) {
			return dictMapper.getDictByDtype(data_type);
		}
	//查询数据：分页查询
	public List<Dict> getDictPage(RowBounds rowBounds) {
		return dictMapper.getDictPage(rowBounds);
	}
	//删除数据：通过id删除
	public void deleteDictById(int id) {
		dictMapper.deleteDictById(id);
	}
	//修改数据：通过id修改
	public void updateDictById(Dict dict) {
		dictMapper.updateDict(dict);
	}
	

}
