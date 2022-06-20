package com.king.service.impl;

import com.king.dao.UserDao;
import com.king.main.User;
import com.king.service.loginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class Login implements loginService {

    @Resource
    private UserDao userDao;

    @Override
    public boolean login(User user) {

        User u1 = userDao.loginSelect(user);

        if(u1 == null || !u1.getPassword().equals(user.getPassword()))
            return false;

        return true;
    }
}
