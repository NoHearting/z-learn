package com.zsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 页面转发、重定向跳转
 */
@Controller
@RequestMapping("/pages")
public class PageController {

    @RequestMapping("/regist")
    public String regist(){
        System.out.println("regist");
        return "pages/regist";
    }

    @RequestMapping("/login")
    public String login(){
        System.out.println("login");
        return "pages/login";
    }

    @RequestMapping("/interest")
    public String interest(){
        System.out.println("interest");
        return "pages/interest";
    }

    @RequestMapping("/FAQs")
    public String FAQs(){
        System.out.println("FAQs");
        return "pages/FAQs";
    }

    @RequestMapping("/course")
    public String course(){
        System.out.println("course");
        return "pages/course";
    }

    @RequestMapping("/test")
    public String test(){
        return "pages/test";
    }

    @RequestMapping("/about-us")
    public String aboutUs(){
        return "pages/about-us";
    }

    @RequestMapping("/language")
    public String language(){
        return "pages/language";
    }

    @RequestMapping("/index")
    public String index(){
        return "redirect:/index.jsp";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "redirect:/index.jsp";
    }

    @RequestMapping("problem")
    public String problem(){
        return "pages/problem";
    }

    /**
     * 测试用
     * @return
     */
    @RequestMapping("/list")
    public String list(){
        return "pages/list";
    }

    /**
     * 测试用
     * @return
     */
    @RequestMapping("/course3")
    public String course3(){
        return "pages/course3";
    }

    @RequestMapping("/allBlog")
    public String allBlog(){
        return "blog/allBlog";
    }
}
