package com.zsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面转发、重定向跳转
 */
@Controller
@RequestMapping("/pages")
public class PageController {

    @RequestMapping("/regist")
    public String regist(){
        System.out.println("regist");
        return "regist";
    }

    @RequestMapping("/login")
    public String login(){
        System.out.println("login");
        return "login";
    }

    @RequestMapping("/interest")
    public String interest(){
        System.out.println("interest");
        return "interest";
    }

    @RequestMapping("/FAQs")
    public String FAQs(){
        System.out.println("FAQs");
        return "FAQs";
    }

    @RequestMapping("/course")
    public String course(){
        System.out.println("course");
        return "course";
    }

    @RequestMapping("/test")
    public String test(){
        return "test";
    }

    @RequestMapping("/about_us")
    public String aboutUs(){
        return "about_us";
    }

    @RequestMapping("/language")
    public String language(){
        return "language";
    }

    @RequestMapping("/index")
    public String index(){
        return "redirect:/index.jsp";
    }
}