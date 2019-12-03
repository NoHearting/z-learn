package com.zsj.service.impl;

import com.zsj.dao.QuestionDao;
import com.zsj.domain.PageBean;
import com.zsj.domain.question.Problem;
import com.zsj.domain.question.QuestionClassify;
import com.zsj.domain.question.QuestionTags;
import com.zsj.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    @Override
    public List<QuestionTags> selectQuestionTags(int pId) {
        return questionDao.selectQuestionTagsById(pId);
    }

    @Override
    public List<QuestionClassify> selectQuestionsClassify() {
        List<QuestionClassify> list = questionDao.selectQuestionsClassify();
        return list;
    }


    @Override
    public boolean insertQuestion(String question, String answer, int isFinished, String tags) {
        try{
            Problem problem = new Problem(question,answer,isFinished);
            questionDao.insertQuestion(problem);
            for(Integer i:parseStringToIntArray(tags)){
                questionDao.insertProblemTypeInfo(problem.getpId(),i);
            }
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 将字符串中的换行符‘\n’替换为‘*-*’便于前端分离显示
     * @param problems
     */
    private void replaceProblemAnswerStr(List<Problem> problems){
        for(Problem problem:problems){
            problem.setAnswer(problem.getAnswer().replaceAll("\n","*-*"));
        }
    }

    /**
     * 将字符串转化为整形数组
     * @param origin
     * @return
     */
    private List<Integer> parseStringToIntArray(String origin){
        origin = origin.replaceAll("]","");
        origin = origin.replaceAll("\\[","");
        System.out.println(origin);
        String[] split = origin.split(",");
        List<Integer> listInt = new ArrayList<>();
        for(String str:split){
            listInt.add(Integer.parseInt(str));
        }
        return listInt;
    }
}
