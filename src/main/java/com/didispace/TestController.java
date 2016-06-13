package com.didispace;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.didispace.service.UserServiceImpl;

@Controller
public class TestController {
	
	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping("/hello")
	@ResponseBody
	public String hello(){
		userService.create("2da33",222);
		
		return "hew";
	}
	
	@RequestMapping("/index")
	public String index(){
		return "index";
	}


}
