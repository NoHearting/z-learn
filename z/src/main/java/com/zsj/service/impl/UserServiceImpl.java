package com.zsj.service.impl;

import com.zsj.dao.UserDao;
import com.zsj.domain.User;
import com.zsj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public List<User> findAll() {
        System.out.println("业务层：查询所有");
        List<User> all = userDao.findAll();
        return all;
    }
}
