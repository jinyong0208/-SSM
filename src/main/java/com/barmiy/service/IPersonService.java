package com.barmiy.service;

import java.util.List;

import com.barmiy.entity.Person;

public interface IPersonService {
	
	public List<Person> getPersonList()throws Exception ;
	
	public Person getPersonById(Integer id) throws Exception ;

}
