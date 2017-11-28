package com.barmiy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.barmiy.entity.Employee;
import com.barmiy.service.IEmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class EmployeeController {
	@Autowired
	private IEmployeeService employeeService ;
	
	@ResponseBody
	@RequestMapping("/emps")
	public PageInfo<Employee>  getAllEmployeeWithJson(@RequestParam(value="pn",defaultValue="1")Integer pn) throws Exception{
		//分页插件指定当前页和每页的显示的行数;
		PageHelper.startPage(pn, 5);
		List<Employee> empList = employeeService.findEmployeeAll();
		PageInfo<Employee> page = new PageInfo<Employee>(empList,10);
		return page ;
	}

}
