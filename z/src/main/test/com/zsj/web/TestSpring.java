package com.zsj.web;

import com.zsj.domain.User;
import com.zsj.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TestSpring {
    @Test
    public void test(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        UserService userService = (UserService) ac.getBean("userService");
        List<User> all = userService.findAll();
        System.out.println(all);
    }
}
