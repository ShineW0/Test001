package com.hyn.service;

import java.util.List;

import com.hyn.domain.Function;

/**
 * 权限的服务层
 * @author Administrator
 *
 */
public interface FunctionService {
	public static final String SERVER_NAME = "com.hyn.service.impl.FunctionServiceImpl";
	//查询数据：通过did(数据字典的编号)查询
	public List<Function> getFunctionByDid(int did);
}
