package com.zsj.controller;


import com.zsj.dao.QuestionDao;
import com.zsj.dao.provider.QuestionProvider;
import com.zsj.domain.PageBean;
import com.zsj.domain.Problem;
import com.zsj.service.ChooseQuestionService;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/choose")
public class ChooseQuestionController {

    @Autowired
    private ChooseQuestionService chooseQuestionService;


    @ResponseBody
    @RequestMapping("/questions")
    public PageBean<Problem> selectQuestions(String searchValue, int currPage, int pageCount, boolean isRandom){
        System.out.println("开始");
        System.out.println(searchValue);
        System.out.println(currPage);
        System.out.println(pageCount);
        System.out.println(isRandom);

        System.out.println("-----------------------------------");
        PageBean<Problem> pageBean = chooseQuestionService.selectQuestions(searchValue, currPage, pageCount, isRandom);
        System.out.println(pageBean);
        return pageBean;
    }



}
