package com.zsj.test;

import com.zsj.dao.QuestionDao;
import com.zsj.domain.question.Problem;
import com.zsj.domain.question.QuestionClassify;
import com.zsj.domain.question.QuestionTags;
import com.zsj.service.QuestionService;
import com.zsj.service.impl.QuestionServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.*;
import java.util.List;

public class Question {
    private ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
    private QuestionDao questionDao = (QuestionDao) ac.getBean("questionDao");
    private QuestionService questionService = (QuestionService)ac.getBean("chooseQuestionService");

    /**
     * 添加问题到数据库
     * @throws IOException
     */
    @Test
    public void addQuestion() throws IOException {
        BufferedReader in = new BufferedReader(new FileReader("D:\\Java\\Project\\zlearn\\projectDBdata\\problems.txt"));
        String s = null;
        int i = 0;
        while((s=in.readLine())!=null){
            if(i++%15==0){
                questionDao.addProblem(new Problem(1,s,s,1));
            }else{
                questionDao.addProblem(new Problem(1,s,"",0));
            }

        }
    }

    /**
     * 测试  查询标签  根据id
     */
    @Test
    public void selectQuestionTagsById(){
        List<QuestionTags> questionTags = questionDao.selectQuestionTagsById(1);
        System.out.println(questionTags);
    }


    @Test
    public void selectQuestionsClassify(){
        List<QuestionClassify> questionClassifies = questionDao.selectQuestionsClassify();
        System.out.println(questionClassifies);
    }


    @Test
    public void testSelectAllQuestion(){
        List<Problem> all = questionDao.selectQuestionsFinishedOr("%%", 0, 20, "全部");
        System.out.println(all);
    }


//    @Test
//    public void testSeparateString(){
//        QuestionServiceImpl questionService = new QuestionServiceImpl();
//        List<Integer> integers = questionService.parseStringToIntArray("[3,2,4]");
//        for(Integer i:integers){
//            System.out.println(i);
//        }
//
//    }

    @Test
    public void test(){
        boolean b = questionService.insertQuestion("222222222222", "333333333333", 1, "[2,1,4]");
        System.out.println(b);
    }
}
