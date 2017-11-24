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
		// ��ҳ��Ϣ������ҳ�뼰ÿҳ�Ĵ�С
		PageHelper.startPage(pn, 4);
		List<Employee> emps = empService.findEmployeeAll();
		// ��װ��ϸ�ķ�ҳ��Ϣ��������ѯ����������,��ʾ������ʾ��ҳ����
		PageInfo<Employee> page = new PageInfo<Employee>(emps, 5);
		model.addAttribute("pageInfo", page);
		return "list";
	}

}
