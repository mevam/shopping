package com.d7.shopping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.d7.shopping.service.serviceimpl.UserServiceImpl;


@Controller
public class TestController {
	
	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping("/hello")
	@ResponseBody
	public String hello(){
		//userService.create("2da33",222);
		return "hew";
	}
	
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	

	/*@RequestMapping("/hotgoods")
	public String hot(){
		return "hotgoods";
	}*/


}
