package com.zsj.dao;

import com.zsj.dao.provider.QuestionProvider;
import com.zsj.domain.Problem;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 关于问题的dao操作
 */
@Repository
public interface QuestionDao {

    /**
     * 分页查询问题，包含有搜索选项
     * @param searchValue
     * @param beginIndex
     * @param pageCount
     * @return
     */
    @SelectProvider(type = QuestionProvider.class,method = "findQuestions")
    public List<Problem> selectQuestions(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex, @Param("pageCount") int pageCount);


    /**
     * 查找所有问题数量
     * @return
     */
    @Select("select count(*) from problems")
    public int totalCount();

    /**
     * 查找一定条件的问题的数量
     * @param selector    选择的条件   完成  or  未完成
     * @return
     */
    @SelectProvider(type = QuestionProvider.class,method = "totalCountAndSelected")
    public int totalCountAndSelected(@Param("selector") String selector);


    /**
     * 查找一定条件的问题的数量
     * @param searchValue  选择的条件   搜索值
     * @return
     */
    @SelectProvider(type = QuestionProvider.class,method = "totalCountAndSearched")
    public int totalCountAndSearched(@Param("searchValue") String searchValue);


    @SelectProvider(type = QuestionProvider.class,method = "totalCountAndSearchedAndSelected")
    public int totalCountAndSearchedAndSelected(@Param("searchValue") String searchValue,@Param("selector") String selector);

    @Insert("insert into problems(question,answer,isFinished) values(#{question},#{answer},#{isFinished})")
    public void addProblem(Problem problem);


    @SelectProvider(type = QuestionProvider.class,method = "selectQuestionsFinishedOr")
    List<Problem> selectQuestionsFinishedOr(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex, @Param("pageCount") int pageCount,@Param("selector") String selector);

    /**
     * 根据id查找问题
     * @param pId
     * @return
     */
    @Select("select * from problems where pId = #{pId}")
    Problem selectOne(int pId);

    /**
     * 根据id修改问题
     * @param problem
     */
    @Update("update problems set question=#{question},answer=#{answer},isFinished=#{isFinished} where pId=#{pId}")
    void changeQuestionById(Problem problem);

    /**
     * 根据id删除问题
     * @param pId
     */
    @Delete("delete from problems where pId = #{pId}")
    void deleteQuestionById(int pId);
}
