package com.hyn.dao;

import java.util.List;

import com.hyn.domain.Function;

/**
 * 权限的接口
 * @author Administrator
 *
 */
public interface FunctionDao {
	public static final String SERVER_NAME = "com.hyn.dao.impl.FunctionDaoImpl";
	//查询数据：通过did(数据字典的编号)查询
	public List<Function> getFunctionByDid(int did);
}
