package com.zsj.controller;


import com.zsj.dao.QuestionDao;
import com.zsj.dao.provider.QuestionProvider;
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
    public List<Problem> selectQuestions(String searchValue, int beginIndex, int pageCount, boolean isRandom){
        List<Problem> problems = chooseQuestionService.selectQuestions(searchValue, beginIndex, pageCount, isRandom);
        System.out.println(problems);
        return null;
    }



}
