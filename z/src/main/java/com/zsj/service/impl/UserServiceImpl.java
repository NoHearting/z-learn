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

    @Override
    public boolean register(User user) {
        try{
            userDao.register(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public User login(User user) {
        try{
            return userDao.findOne(user);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
