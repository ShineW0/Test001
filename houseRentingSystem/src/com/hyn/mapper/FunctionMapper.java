package com.hyn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.hyn.domain.Function;

/**
 * 用户权限的增删改查
 * @author Administrator
 *
 */
public interface FunctionMapper {

	//查询数据：通过用户类型查看用户权限
	@Select("select id, fun_name, did, state from function where did=#{did}")
	public List<Function> getFunctionByDid(int did);
}
