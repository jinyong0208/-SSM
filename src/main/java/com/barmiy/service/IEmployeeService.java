package com.barmiy.service;

import java.util.List;

import com.barmiy.entity.Employee;

/**
 * 定义员工信息业务层标准，对员工信息增删该查的操作
 * 
 * @author jinyong
 *
 */
public interface IEmployeeService {
	/**
	 * 员工信息查询
	 * 
	 * @return 以集合的信息返回所有员工信息
	 * @throws Exception
	 *             SQL执行异常
	 */
	public List<Employee> findEmployeeAll() throws Exception;
}
