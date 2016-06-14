package com.d7.shopping.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.d7.shopping.entity.User;

@Repository
public class UserDao {
	
	@Autowired
	private JdbcTemplate jdbctemplate;
	
	public void addUser(){
		jdbctemplate.update("insert into t_user (username,password) values ('ad','ddd')");
	}
	
	public User findUserByName(String name){
		
		return jdbctemplate.queryForObject("select * from t_user where username = ?", new RowMapper<User>(){

			@Override
			public User mapRow(ResultSet rs, int arg1) throws SQLException {
				User u=new User();
				u.setPassword(rs.getString("password"));
				u.setUsername(rs.getString("username"));
				return u;
			}
			
		},new Object[]{name});
	}

}
