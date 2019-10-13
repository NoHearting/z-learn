package com.zsj.provider;


import org.apache.ibatis.jdbc.SQL;
import org.springframework.test.context.jdbc.Sql;

/**
 * 动态sql，关于“问题”表的一系列操作
 */
public class ProblemProvider {

    String selectQuestions(String searchValue,int beginIndex,int pageCount){
        return new SQL(){

        };
    }
}
