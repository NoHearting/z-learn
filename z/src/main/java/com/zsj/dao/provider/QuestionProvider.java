package com.zsj.dao.provider;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;


import java.util.Objects;



/**
 * 动态sql，关于“问题”表的一系列操作
 */
public class QuestionProvider {

    public String findQuestions(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex,@Param("pageCount") int pageCount){
        String limit = " limit "+beginIndex+", "+pageCount;
        return new SQL(){
            {
                SELECT("*");
                FROM("problems");

                if(!Objects.equals(searchValue,null)&&!Objects.equals(searchValue,"%%")&&!Objects.equals(searchValue,"null")){

                    WHERE("question like #{searchValue}");
                }
                WHERE("isFinished = 1");
            }
        }.toString()+limit;
    }

    public String selectQuestionsFinishedOr(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex, @Param("pageCount") int pageCount,@Param("selector") String selector){

        String limit = " limit "+beginIndex+", "+pageCount;
        String sql =  new SQL(){
            {
                SELECT("*");
                FROM("problems");

                if(!Objects.equals(searchValue,null)&&!Objects.equals(searchValue,"%%")&&!Objects.equals(searchValue,"null")){
                    WHERE("question like #{searchValue}");
                }
                if(!Objects.equals(selector,null)){
                    if(Objects.equals(selector,"完成")){
                        WHERE("isFinished = 1");
                    }else if(Objects.equals(selector,"未完成")){
                        WHERE("isFinished = 0");

                    }
                }

            }
        }.toString()+limit;
        return sql;
    }


    public String totalCountAndSelected(@Param("selector") String selector){
        String sql =  new SQL(){
            {
                SELECT("count(*)");
                FROM("problems");
                if(!Objects.equals(selector,null)){
                    if(Objects.equals(selector,"完成")){
                        WHERE("isFinished = 1");
                    }else if(Objects.equals(selector,"未完成")){
                        WHERE("isFinished = 0");

                    }
                }
            }
        }.toString();
        return sql;
    }

    public String totalCountAndSearched(@Param("searchValue") String searchValue){
        return new SQL(){
            {
                SELECT("count(*)");
                FROM("problems");
                if(!Objects.equals(searchValue,null)&&!Objects.equals(searchValue,"%%")&&!Objects.equals(searchValue,"null")){
                    WHERE("question like #{searchValue}");
                }
            }
        }.toString();
    }

    public String totalCountAndSearchedAndSelected(@Param("searchValue") String searchValue,@Param("selector") String selector){

        return new SQL() {
            {
                SELECT("count(*)");
                FROM("problems");
                if(!Objects.equals(searchValue,null)&&!Objects.equals(searchValue,"%%")&&!Objects.equals(searchValue,"null")){
                    WHERE("question like #{searchValue}");
                }
                if(Objects.equals(selector,"完成")){
                    WHERE("isFinished = 1");
                }else if(Objects.equals(selector,"未完成")){
                    WHERE("isFinished = 0");

                }
            }
        }.toString();

    }
}
