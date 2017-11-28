package com.barmiy.service;

import com.barmiy.entity.EUDataGridResult;

public interface IDepartmentService {

	public EUDataGridResult findDeptByAll(int page, int rows) throws Exception;

}
