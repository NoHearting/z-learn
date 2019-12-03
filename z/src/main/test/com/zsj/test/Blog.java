package com.zsj.test;

import com.zsj.dao.BlogDao;
import com.zsj.dao.QuestionDao;
import com.zsj.service.QuestionService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Blog {
    private ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
    private QuestionDao questionDao = (QuestionDao) ac.getBean("questionDao");
    private BlogDao blogDao = (BlogDao) ac.getBean("blogDao");
    private QuestionService questionService = (QuestionService)ac.getBean("chooseQuestionService");


    @Test
    public void testSelectBlogClassify(){
        List<com.zsj.domain.Blog> blogs = blogDao.selectBlogsClassify("%%", 0, 10, 2);
        System.out.println(blogs);
    }
}
