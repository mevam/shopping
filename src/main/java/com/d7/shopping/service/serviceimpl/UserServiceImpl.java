package com.d7.shopping.service.serviceimpl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.d7.shopping.dao.UserDao;
import com.d7.shopping.entity.User;
import com.d7.shopping.service.UserService;
import com.d7.shopping.utils.SessionUtil;

@Service
public class UserServiceImpl implements UserService {

   /* @Autowired
    private JdbcTemplate jdbcTemplate;*/
    
    @Autowired
    private UserDao userDao;

    @Override
    public void create() {
    	userDao.addUser();
    }
 

}
