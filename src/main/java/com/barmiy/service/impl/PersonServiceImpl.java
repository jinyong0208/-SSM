package com.barmiy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barmiy.dao.PersonMapper;
import com.barmiy.entity.Person;
import com.barmiy.service.IPersonService;

@Service
public class PersonServiceImpl implements IPersonService {
	
	@Autowired
	PersonMapper personMapper ;

	@Override
	public List<Person> getPersonList() throws Exception {
		// TODO Auto-generated method stub
		
		return personMapper.selectByExample(null);
	}

	@Override
	public Person getPersonById(Integer id) throws Exception {
		// TODO Auto-generated method stub
	
		return personMapper.selectByPrimaryKey(id);
	}

}
