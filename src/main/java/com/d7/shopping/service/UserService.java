package com.d7.shopping.service;

import javax.servlet.http.HttpServletRequest;

import com.alibaba.fastjson.JSONObject;


public interface UserService {

	void create();

	boolean checklogin(String name, String pwd);

   

}
