package com.barmiy.service;

import java.util.List;

import com.barmiy.entity.Employee;

/**
 * ����Ա����Ϣҵ����׼����Ա����Ϣ��ɾ�ò�Ĳ���
 * 
 * @author jinyong
 *
 */
public interface IEmployeeService {
	/**
	 * Ա����Ϣ��ѯ
	 * 
	 * @return �Լ��ϵ���Ϣ��������Ա����Ϣ
	 * @throws Exception
	 *             SQLִ���쳣
	 */
	public List<Employee> findEmployeeAll() throws Exception;
}
