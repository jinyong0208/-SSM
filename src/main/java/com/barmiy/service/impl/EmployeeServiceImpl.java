package com.barmiy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barmiy.dao.EmployeeMapper;
import com.barmiy.entity.Employee;
import com.barmiy.service.IEmployeeService;

@Service
public class EmployeeServiceImpl implements IEmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;

	@Override
	public List<Employee> findEmployeeAll() throws Exception {
		// TODO Auto-generated method stub
		return employeeMapper.selectByExample(null);
	}

}
