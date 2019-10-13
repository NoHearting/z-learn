package com.zsj.controller;

import com.zsj.domain.User;
import com.zsj.enums.Status;
import com.zsj.response.ResponseInfo;
import com.zsj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAll")
    public String findAll(){
        System.out.println("表现层：查询所有");
        List<User> all = userService.findAll();
        System.out.println(all);
        return "list";
    }



    @ResponseBody
    @RequestMapping("regist")
    public ResponseInfo register(User user){
        System.out.println(user);
        boolean flag = userService.register(user);
        ResponseInfo ri = new ResponseInfo();
        if(flag){
            ri.setDescription("注册成功");
            ri.setStatus(Status.NORMAL);
        }else{
            ri.setDescription("注册失败，请重试");
            ri.setStatus(Status.ERROR);
        }
        return ri;
    }

    @ResponseBody
    @RequestMapping("/login")
    public User login(User user, HttpServletRequest request){
        User u = userService.login(user);
        System.out.println("User:"+user);
        System.out.println("Login:"+u);
        request.getSession().setAttribute("user",u);
        return u;
    }

    @ResponseBody
    @RequestMapping("/checkLogin")
    public User checkLogin(HttpServletRequest request){
        System.out.println("checkLogin");
        User user = (User) request.getSession().getAttribute("user");
        System.out.println(user);
        return user;
    }
}
