package com.zsj.controller;


import com.zsj.domain.PageBean;
import com.zsj.domain.question.Problem;
import com.zsj.domain.question.QuestionClassify;
import com.zsj.domain.question.QuestionTags;
import com.zsj.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;


    @ResponseBody
    @RequestMapping("/questions")
    public PageBean<Problem> selectQuestions(String searchValue, int currPage, int pageCount, boolean isRandom,String selector){
        PageBean<Problem> pageBean = questionService.selectQuestions(searchValue, currPage, pageCount, isRandom);

        return pageBean;
    }

    @ResponseBody
    @RequestMapping("/selectedOr")
    public PageBean selectQuestionsSelectedOr(String searchValue, int currPage, int pageCount,String selector){
        PageBean<Problem> pageBean = questionService.selectQuestionsFinishedOr(searchValue, currPage, pageCount,selector);
        return pageBean;
    }


    @ResponseBody
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
        questionService.changeQuestionById(problem);
        return true;
    }

    @ResponseBody
    @RequestMapping("/deleteQuestionById")
    public boolean deleteQuestionById(int pId){
        questionService.deleteQuestionById(pId);
        return true;
    }

    @ResponseBody
    @RequestMapping("/selectQuestionTags")
    public List<QuestionTags> selectQuestionTags(int pId){
        List<QuestionTags> questionTags = questionService.selectQuestionTags(pId);
//        System.out.println(questionTags);
        return questionTags;
    }

    /**
     * 查询问题的分类信息，用于选择问题的分类
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectQuestionsClassify")
    public List<QuestionClassify> selectQuestionsClassify(){
        List<QuestionClassify> list =  questionService.selectQuestionsClassify();
        return list;
    }


    @ResponseBody
    @RequestMapping("/insertQuestion")
    public String insertQuestion(String question,String answer,int isFinished,String tags){
        boolean b = questionService.insertQuestion(question, answer, isFinished, tags);
        if(b){
            return "success";
        }else{
            return "false";
        }

    }
}
