package com.zsj.service.impl;

import com.zsj.dao.QuestionDao;
import com.zsj.domain.PageBean;
import com.zsj.domain.Problem;
import com.zsj.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service("chooseQuestionService")
public class QuestionServiceImpl implements QuestionService {
    @Autowired
    private QuestionDao questionDao;

    @Override
    public PageBean<Problem> selectQuestions(String searchValue, int currPage, int pageCount, boolean isRandom) {
        List<Problem> problems = null;
        PageBean pageBean = new PageBean<Problem>();
        int beginIndex = 1;
        try {
            pageBean.setCurrentPage(currPage);           //当前页码

            searchValue = "%"+searchValue+"%";
            problems = questionDao.selectQuestions(searchValue, beginIndex, pageCount);
            replaceProblemAnswerStr(problems);// 替换答案中的换行

            int totalCount = problems.size();
            pageBean.setTotalCount(totalCount);         //总条数

            int totalPage = totalCount/pageCount==0? totalCount/pageCount:totalCount/pageCount+1;
            totalPage = totalPage == 0 ? 1 :totalPage;

            pageBean.setTotalPage(totalPage);            //分页总数

            if(isRandom){    //如果随机选择
                int bound = totalCount-pageCount>0?totalCount-pageCount:1;
                beginIndex = new Random().nextInt(bound);
            }else{
                beginIndex = (currPage-1)*pageCount;
            }
            System.out.println("beginIndex:"+beginIndex);

            pageBean.setList(problems);
            pageBean.setPageSize(pageCount);
            System.out.println(problems);
            return pageBean;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("出现SQL异常");
        }
        return null;
    }

    @Override
    public PageBean<Problem> selectQuestionsFinishedOr(String searchValue, int currPage, int pageCount, String selector) {
        List<Problem> problems = null;
        PageBean pageBean = new PageBean<Problem>();
        int beginIndex = 1;
        try {
            pageBean.setCurrentPage(currPage);           //当前页码

            searchValue = "%"+searchValue+"%";
            int totalCount = questionDao.totalCountAndSearchedAndSelected(searchValue,selector);
            pageBean.setTotalCount(totalCount);         //总条数

            int totalPage = totalCount/pageCount==0? totalCount/pageCount:totalCount/pageCount+1;
            totalPage = totalPage == 0 ? 1 :totalPage;

            pageBean.setTotalPage(totalPage);            //分页总数


            beginIndex = (currPage-1)*pageCount;

            System.out.println("beginIndex:"+beginIndex);
            searchValue = "%"+searchValue+"%";
            problems = questionDao.selectQuestionsFinishedOr(searchValue, beginIndex, pageCount,selector);
            pageBean.setList(problems);
            pageBean.setPageSize(pageCount);
            System.out.println(problems);
            return pageBean;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("出现SQL异常");
        }
        return null;
    }

    @Override
    public Problem selectOne(int pId) {
        return questionDao.selectOne(pId);
    }

    @Override
    public void changeQuestionById(Problem problem) {
        questionDao.changeQuestionById(problem);
    }

    @Override
    public void deleteQuestionById(int pId) {
        questionDao.deleteQuestionById(pId);
    }

    private void replaceProblemAnswerStr(List<Problem> problems){
        for(Problem problem:problems){
            System.out.println(problem);
            problem.setAnswer(problem.getAnswer().replaceAll("\n","*-*"));
        }
    }
}
