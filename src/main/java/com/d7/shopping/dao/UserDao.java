package com.d7.shopping.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	public void addUser(){
		jdbctemplate.update("insert into t_user (username,password) values ('ad','ddd')");
	}

}
