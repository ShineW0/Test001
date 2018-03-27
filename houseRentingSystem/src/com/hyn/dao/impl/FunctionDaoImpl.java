package com.hyn.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hyn.dao.FunctionDao;
import com.hyn.domain.Function;
import com.hyn.mapper.FunctionMapper;
import com.hyn.util.MybatisFactoryUtil;

/**
 * 权限增删改查dao层的实现类
 * @author Administrator
 *
 */
@Repository(FunctionDao.SERVER_NAME)
public class FunctionDaoImpl implements FunctionDao{
	private SqlSession session = MybatisFactoryUtil.getSf().openSession(true);
	FunctionMapper funMapper = session.getMapper(FunctionMapper.class);
	public List<Function> getFunctionByDid(int did) {
		return funMapper.getFunctionByDid(did);
	}

}
