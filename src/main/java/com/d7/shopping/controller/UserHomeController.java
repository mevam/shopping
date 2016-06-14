package com.d7.shopping.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.d7.shopping.entity.User;
import com.d7.shopping.service.UserService;
import com.d7.shopping.utils.SessionUtil;

@Controller
public class UserHomeController {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/toUserhome")
	public String index(HttpServletRequest req){
		User user=SessionUtil.getUser(req);
		if(user==null){
			return "login";
		}
		return "userhome";
	}
	
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	
	@RequestMapping("/checklogin")
	@ResponseBody
	public String checklogin(HttpServletRequest req){
		String name=req.getParameter("j_username");
		String pwd=req.getParameter("j_password");
		boolean t=userService.checklogin(name, pwd);
		System.out.println(t);
		return String.valueOf(t);
	}
	
	@RequestMapping("/userReg")
	public String userReg(HttpServletRequest req){
		
		String nickName=req.getParameter("nickName");
		String mobile=req.getParameter("mobile");
		String password=req.getParameter("password");
		String sex=req.getParameter("sex");
		String mobileCode=req.getParameter("mobileCode");
		
		JSONObject param=new JSONObject();
		param.put("nickName", nickName);
		param.put("mobile", mobile);
		param.put("password", password);
		param.put("sex", sex);
		param.put("mobileCode", mobileCode);
		userService.create();
		
		return "userhome";
	}
	
	

}
