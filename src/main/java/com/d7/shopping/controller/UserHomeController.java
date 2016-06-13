package com.d7.shopping.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.d7.shopping.entity.User;
import com.d7.shopping.utils.SessionUtil;

@Controller
public class UserHomeController {
	
	
	@RequestMapping("/toUserhome")
	public String index(HttpServletRequest req){
		User user=SessionUtil.getUser(req);
		if(user==null){
			return "login";
		}
		return "userhome";
	}
	
	

}
