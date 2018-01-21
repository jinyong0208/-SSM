package com.barmiy.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.barmiy.entity.User;

@Controller
@RequestMapping("user")
public class UserController {
	
	public void addUser (HttpServletRequest request,HttpServletResponse response,User user) {
		System.out.println("过来了");
		String result="{\"name\":\""+user.getName()+"\"}";
		PrintWriter out = null ;
		response.setContentType("application/json");
		try {
			out=response.getWriter();
			out.write(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
