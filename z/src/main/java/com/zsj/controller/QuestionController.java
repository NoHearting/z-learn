package com.zsj.controller;


import com.zsj.domain.PageBean;
import com.zsj.domain.Problem;
import com.zsj.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;


    @ResponseBody
    @RequestMapping("/questions")
    public PageBean<Problem> selectQuestions(String searchValue, int currPage, int pageCount, boolean isRandom,String selector){
        System.out.println("开始");
        System.out.println(searchValue);
        System.out.println(currPage);
        System.out.println(pageCount);
        System.out.println(isRandom);

        System.out.println("-----------------------------------");
        PageBean<Problem> pageBean = questionService.selectQuestions(searchValue, currPage, pageCount, isRandom);

        return pageBean;
    }

    @ResponseBody
    @RequestMapping("/selectedOr")
    public PageBean selectQuestionsSelectedOr(String searchValue, int currPage, int pageCount,String selector){
        System.out.println(selector);
        PageBean<Problem> pageBean = questionService.selectQuestionsFinishedOr(searchValue, currPage, pageCount,selector);
        System.out.println(pageBean);
        return pageBean;
    }


    @RequestMapping("/saveQuestion")
    public String saveQuestion(){
        return null;
    }

    @ResponseBody
    @RequestMapping("/selectOne")
    public Problem selectOne(int pId){
        Problem problem = questionService.selectOne(pId);
        return problem;
    }

    @ResponseBody
    @RequestMapping("/changeQuestionById")
    public boolean changeQuestionById(Problem problem){
        System.out.println(problem);
        questionService.changeQuestionById(problem);
        return true;
    }

    @ResponseBody
    @RequestMapping("/deleteQuestionById")
    public boolean deleteQuestionById(int pId){
        questionService.deleteQuestionById(pId);
        return true;
    }

}
