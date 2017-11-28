package com.barmiy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barmiy.dao.DepartmentMapper;
import com.barmiy.entity.Department;
import com.barmiy.entity.DepartmentExample;
import com.barmiy.entity.EUDataGridResult;
import com.barmiy.service.IDepartmentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class DepartmentServiceImpl implements IDepartmentService {
	@Autowired
	private DepartmentMapper departmentMapper;

	@Override
	public EUDataGridResult findDeptByAll(int page, int rows) throws Exception {
		DepartmentExample example = new DepartmentExample();
		// ��ҳ����
		PageHelper.startPage(page, rows);
		List<Department> list = departmentMapper.selectByExample(example);
		// ����һ������ֵ����
		EUDataGridResult result = new EUDataGridResult();
		result.setRows(list);
		// ȡ���ܼ�¼��
		PageInfo<Department> pageInfo = new PageInfo<>(list);
		result.setTotal(pageInfo.getTotal());
		return result;
	}

}
