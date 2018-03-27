package com.hyn.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisFactoryUtil {

	public static SqlSessionFactory getSf(){
		try {
			InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
			return new SqlSessionFactoryBuilder().build(in);
		} catch (IOException e) {
			System.out.println("配置故障");
			return null;
		}
	}
}
