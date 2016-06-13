package com.d7.shopping.utils;

import javax.servlet.http.HttpServletRequest;

import com.d7.shopping.entity.User;


public class SessionUtil {

	public static User getUser(HttpServletRequest req){
		
		User user=(User) req.getSession().getAttribute("user");
		
		return user;
		
	}
}
