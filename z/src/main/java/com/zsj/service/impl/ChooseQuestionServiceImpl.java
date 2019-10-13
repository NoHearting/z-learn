package com.zsj.service.impl;

import com.zsj.dao.QuestionDao;
import com.zsj.dao.UserDao;
import com.zsj.domain.Problem;
import com.zsj.service.ChooseQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("chooseQuestionService")
public class ChooseQuestionServiceImpl implements ChooseQuestionService {
    @Autowired
    private QuestionDao questionDao;

    @Override
    public List<Problem> selectQuestions(String searchValue, int beginIndex, int pageCount, boolean isRandom) {
        List<Problem> problems = questionDao.selectQuestions(searchValue, beginIndex, pageCount);
        try {
            System.out.println(problems);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("出现SQL异常");
        }
        return null;
    }
}
