package com.zsj.service.impl;

import com.zsj.dao.QuestionDao;
import com.zsj.dao.UserDao;
import com.zsj.domain.PageBean;
import com.zsj.domain.Problem;
import com.zsj.service.ChooseQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service("chooseQuestionService")
public class ChooseQuestionServiceImpl implements ChooseQuestionService {
    @Autowired
    private QuestionDao questionDao;

    @Override
    public PageBean<Problem> selectQuestions(String searchValue, int currPage, int pageCount, boolean isRandom) {
        List<Problem> problems = null;
        PageBean pageBean = new PageBean<Problem>();
        int beginIndex = 1;
        try {
            pageBean.setCurrentPage(currPage);           //当前页码

            int totalCount = questionDao.totalCount();
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
            searchValue = "%"+searchValue+"%";
            problems = questionDao.selectQuestions(searchValue, beginIndex, pageCount);
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
}
