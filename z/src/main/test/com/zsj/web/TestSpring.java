package com.zsj.web;

import com.zsj.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {
    @Test
    public void test(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
        UserService userService = (UserService) ac.getBean("userService");
        userService.findAll();
    }
}
