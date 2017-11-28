package com.barmiy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.barmiy.entity.EUDataGridResult;
import com.barmiy.service.IDepartmentService;

@Controller
public class DepartmentController {
	@Autowired
	private IDepartmentService departmentService;

	@ResponseBody
	@RequestMapping("/dept")
	public EUDataGridResult getDeptList(@RequestParam (value="page",defaultValue="1")Integer page,@RequestParam (value="rows",defaultValue="5") Integer rows) throws Exception {
		EUDataGridResult result = departmentService.findDeptByAll(page, rows);
		return result;
	}

}
