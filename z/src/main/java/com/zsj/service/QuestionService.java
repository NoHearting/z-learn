package com.zsj.service;

import com.zsj.domain.PageBean;
import com.zsj.domain.Problem;
import org.springframework.stereotype.Service;

import java.util.List;



public interface QuestionService {

    /**
     * 选择学习的问题
     * @param searchValue 搜索的关键字
     * @param beginIndex    开始的索引。分页作用
     * @param pageCount     每页的问题条数
     * @param isRandom  是否随机获取问题
     * @return 返回问题列表
     */
    public PageBean<Problem> selectQuestions(String searchValue, int beginIndex, int pageCount, boolean isRandom);

    /**
     * 选择已经完成的问题
     * @param searchValue
     * @param currPage
     * @param pageCount
     * @param selector
     * @return
     */
    PageBean<Problem> selectQuestionsFinishedOr(String searchValue, int currPage, int pageCount, String selector);

    /**
     * 根据id查找问题
     * @param pId
     * @return
     */
    Problem selectOne(int pId);

    /**
     * 根据id修改问题
     * @param problem
     */
    void changeQuestionById(Problem problem);

    /**
     * 根据pId删除问题
     * @param pId
     */
    void deleteQuestionById(int pId);
}
