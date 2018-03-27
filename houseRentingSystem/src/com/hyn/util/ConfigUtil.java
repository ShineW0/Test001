package com.hyn.util;


import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ConfigUtil {

	public static Object getBean(String servername){
		BeanFactory factory = new ClassPathXmlApplicationContext("/config.xml");
		return factory.getBean(servername);
	}
}
