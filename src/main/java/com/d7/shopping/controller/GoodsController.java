package com.d7.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {
	
	
	@RequestMapping("/hotgoods")
	public String index(){
		return "hotgoods";
	}

}
