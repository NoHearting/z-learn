package com.zsj.service;

import com.zsj.domain.User;

import java.util.List;

public interface UserService {

    List<User> findAll();


    boolean register(User user);

    User login(User user);
}
