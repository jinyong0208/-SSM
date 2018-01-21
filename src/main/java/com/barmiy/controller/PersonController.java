package com.barmiy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.barmiy.entity.Person;
import com.barmiy.entity.RusultUtils;
import com.barmiy.service.IPersonService;

@Controller
public class PersonController {
	@Autowired
	private IPersonService personService;
	
	@RequestMapping(value="Person")
	@ResponseBody
	public List<Person> getPerson()throws Exception {
		return personService.getPersonList();
	}
	
	@RequestMapping(value="PersonList")
	@ResponseBody
	public RusultUtils getPersonByList()throws Exception {
		RusultUtils rusult = new RusultUtils();
		rusult.setTotal(100);
		rusult.setList(personService.getPersonList());
		return rusult ;
	}
	
	@RequestMapping(value="json1",method=RequestMethod.GET)
	@ResponseBody
	public Person getPersonByid(Integer id)throws Exception {
		return personService.getPersonById(id);
	}
	
	@RequestMapping(value="json2/{personId}",method=RequestMethod.GET)
	@ResponseBody
	public Person findPersonByid(@PathVariable Integer personId)throws Exception {
		return personService.getPersonById(personId);
	}

}
