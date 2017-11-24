package com.barmiy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.barmiy.entity.Employee;
import com.barmiy.service.IEmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class EmployeeController {
	@Autowired
	private IEmployeeService empService;

	@RequestMapping("/emps")
	public String getEmp(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) throws Exception {
		// 分页信息，传入页码及每页的大小
		PageHelper.startPage(pn, 4);
		List<Employee> emps = empService.findEmployeeAll();
		// 封装详细的分页信息，包括查询出来的数据,显示连续显示的页数。
		PageInfo<Employee> page = new PageInfo<Employee>(emps, 5);
		model.addAttribute("pageInfo", page);
		return "list";
	}

}
