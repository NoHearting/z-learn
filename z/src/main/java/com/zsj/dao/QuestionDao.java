package com.zsj.dao;

import com.zsj.dao.provider.QuestionProvider;
import com.zsj.domain.Problem;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 关于问题的dao操作
 */
@Repository
public interface QuestionDao {

//    @SelectProvider(type = QuestionProvider.class,method = "findQuestions")
    public List<Problem> selectQuestions(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex, @Param("pageCount") int pageCount);


    @Select("select count(*) from problems")
    public int totalCount();



}
