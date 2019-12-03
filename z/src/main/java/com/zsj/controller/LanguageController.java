package com.zsj.controller;

import com.zsj.domain.Blog;
import com.zsj.domain.PageBean;
import com.zsj.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 配置计算机语言页面
 *
 */
@Controller
@RequestMapping("/language")
public class LanguageController {

    @Autowired
    private LanguageService languageService;

    @ResponseBody
    @RequestMapping("/getLanguageInfo")
    public PageBean<Blog> getLanguageInfo(HttpServletRequest request){
        System.out.println("获取博客");
        int initKey = (Integer)request.getSession().getAttribute("initKey");
        PageBean<Blog> pageBean = languageService.selectBlogs("", 1, 12, initKey);
        //System.out.println(pageBean);
        return pageBean;
    }
}
