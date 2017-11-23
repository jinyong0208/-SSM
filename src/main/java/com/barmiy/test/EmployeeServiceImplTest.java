package com.barmiy.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.barmiy.entity.Employee;
import com.barmiy.service.IEmployeeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class EmployeeServiceImplTest {
	@Autowired
	private IEmployeeService iEmployeeService;

	@Test
	public void testFindEmployeeAll() throws Exception {
		List<Employee> findEmployeeAll = iEmployeeService.findEmployeeAll();
		for(Employee emp :findEmployeeAll) {
			System.out.println(emp.getEname()+"¡¢"+emp.getJob());
		}
	}

}
