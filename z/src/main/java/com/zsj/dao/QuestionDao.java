package com.zsj.dao;

import com.zsj.dao.provider.QuestionProvider;
import com.zsj.domain.question.Problem;
import com.zsj.domain.question.QuestionClassify;
import com.zsj.domain.question.QuestionTags;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
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


    @Insert("insert into problems(question,answer,isFinished) values(#{question},#{answer},#{isFinished})")
    @Options(useGeneratedKeys = true,keyProperty = "pId",keyColumn = "pId")   //保存问题之后保存主键值
    void insertQuestion(Problem problem);

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
    @Results(id = "questions",value = {
            @Result(column = "pId",property = "pId"),
            @Result(column = "pId",property = "tags",
                    many = @Many(select = "com.zsj.dao.QuestionDao.selectQuestionTagsById",fetchType = FetchType.DEFAULT)
            )
    })
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

    /**
     * 根据id查询“问题”的所属类型标签
     * @param pId
     * @return
     */
    @Select("select sId,s.name subType from smallType s\n" +
            "\twhere sId in(select tId from problems_type where pId = #{pId})")
    List<QuestionTags> selectQuestionTagsById(int pId);

    /**
     * 根据大类型的id查询大类型下的所有小类型
     * @param bId
     * @return
     */
    @Select("select sId,name subType from smallType where bId=#{bId}")
    QuestionTags findQuestionTag(int bId);

    /**
     * 查询问题的标签分类
     * @return
     */
    @Select("select * from bigType")
    @Results(id = "questionMap",value = {
            @Result(column = "name",property = "mainType"),
            @Result(column = "bId",property = "questionTags",
                    many = @Many(
                            select = "com.zsj.dao.QuestionDao.findQuestionTag",
                            fetchType = FetchType.DEFAULT
                                )
                    )

            })
    List<QuestionClassify> selectQuestionsClassify();

    /**
     * 添加问题的标签对应关系，即问题的分类
     * @param pId
     * @param tId
     */
    @Insert("insert into problems_type(pId,tId) values(#{pId},#{tId})")
    void insertProblemTypeInfo(@Param("pId") int pId,@Param("tId") int tId);
}
