package com.hyn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hyn.dao.FunctionDao;
import com.hyn.domain.Function;
import com.hyn.service.FunctionService;

/**
 * 权限服务层的实现类
 * @author Administrator
 *
 */
@Service(FunctionService.SERVER_NAME)
public class FunctionServiceImpl implements FunctionService{
	@Resource(name=FunctionDao.SERVER_NAME)
	private FunctionDao functionDao;
	public List<Function> getFunctionByDid(int did) {
		return functionDao.getFunctionByDid(did);
	}
}
