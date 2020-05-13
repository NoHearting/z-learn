package com.zsj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * 页面转发、重定向跳转
 */
@Controller
@RequestMapping("/pages")
public class PageController {

    /**
     * 测试使用，可删除
     * @return
     */
    @RequestMapping("/test1")
    public String test1(){

        int i = 0;
        int j = 1/i;
        return "pages/regist";
    }


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
    public String course(int initKey,HttpServletRequest request){
        System.out.println("pages:"+initKey);
        request.getSession().setAttribute("initKey",initKey);
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
    public String language(int initKey,HttpServletRequest request){
        System.out.println("pages:"+initKey);
        request.getSession().setAttribute("initKey",initKey);
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

    /**
     * 返回当前需要显示的博客页面，并且存入当前显示的博客的id
     * @param bId
     * @param request
     * @return
     */
    @RequestMapping("/showBlog")
    public String showBlog(int bId,HttpServletRequest request){
        request.getSession().setAttribute("currShowBlogId",bId);
        return "blog/showBlog";
    }

    @ResponseBody
    @RequestMapping("/getBId")
    public int getBId(HttpServletRequest request){
        int bId = (Integer)request.getSession().getAttribute("currShowBlogId");
        return bId;
    }


    @RequestMapping("/allQuestion")
    public String allQuestion(){
        return "question/allQuestion";
    }

    @RequestMapping("/editQuestion")
    public ModelAndView editQuestion(int pId){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("questionId",pId);
        modelAndView.setViewName("question/editQuestion");
        return modelAndView;
    }

    @RequestMapping("/chooseAddResource")
    public String chooseAddResource(){
        return "pages/chooseAddResource";
    }

    /**
     * 留言板
     * @return
     */
    @RequestMapping("/infocenter")
    public String leaveMessage(){
        return "infocenter/infocenter";
    }


    /**
     * 微言大义页面
     * @return
     */
    @GetMapping("/motto")
    public String motto(){
        return "lifelogging/motto";
    }
}
