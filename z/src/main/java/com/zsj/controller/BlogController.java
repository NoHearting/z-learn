package com.zsj.controller;

import com.zsj.domain.Blog;
import com.zsj.domain.PageBean;
import com.zsj.domain.User;
import com.zsj.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @RequestMapping("/test")
    public String test(){
        return "blog/test";
    }

    @RequestMapping("/test2")
    public String test2(){
        return "blog/test2";
    }


    @RequestMapping("/write")
    public String write(){
        return "blog/write";
    }


    @ResponseBody
    @RequestMapping("/saveArticle")
    public String saveArticle(String header, String content, String labels, HttpServletRequest request){

        System.out.println("header:"+header);
        System.out.println("content:"+content);
        System.out.println("labels:"+labels);

        boolean flag = true;    //是否测试
        int uId = 1;
        if(!flag){
            User user = (User) request.getSession().getAttribute("user");
            uId = user.getId();
        }
        blogService.saveBlog(new Blog(header,content,new Date(),0,uId),labels);
        return "pages/list";
    }


    /**
     * 分页查询博客进行简单展示
     * 只返回博客的title，content，writeDate，readTimes用于简单显示
     * @param searchValue
     * @param currPage
     * @param pageCount
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectBlogs")
    public PageBean<Blog> selectBlogs(String searchValue, int currPage, int pageCount){

        PageBean<Blog> pageBean = blogService.selectBlogs(searchValue, currPage, pageCount);
        System.out.println(pageBean);
        return pageBean;
    }

    /**
     * 根据id查找博客的详细内容
     * @param bId
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectBlog")
    public Blog selectBlog(int bId){

        Blog blog = blogService.selectBlog(bId);

        return blog;
    }



}
