package com.zsj.dao.provider;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Repository;

import java.util.Objects;

/**
 * 动态sql，关于“问题”表的一系列操作
 */
//@Repository("questionProvider")
public class QuestionProvider {

    String findQuestions(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex,@Param("pageCount") int pageCount){
        String limit = "limit "+beginIndex+", "+pageCount;
        return new SQL(){
            {
                SELECT("*");
                FROM("problems");

                if(!Objects.equals(searchValue,null)&&!Objects.equals(searchValue,"")){
                    WHERE("question like %#{searchValue}");
                }
            }
        }.toString()+limit;
    }
}
