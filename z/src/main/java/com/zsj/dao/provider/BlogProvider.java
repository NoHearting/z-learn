package com.zsj.dao.provider;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

import java.util.Objects;

/**
 * 动态sql，关于“博客”表的一系列操作
 */
//@Repository("blogProvider")
public class BlogProvider {

    public String findBlogs(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex,@Param("pageCount") int pageCount){
        String limit = " limit "+beginIndex+", "+pageCount;
        return new SQL(){
            {
                SELECT("*");
                FROM("blog");

                if(!Objects.equals(searchValue,null)&&!Objects.equals(searchValue,"")){
                    WHERE("title like #{searchValue}");
                }
            }
        }.toString()+limit;
    }

    public String selectBlogsAndClassify(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex, @Param("pageCount") int pageCount,@Param("sId") int sId ){
        String limit = " limit "+beginIndex+", "+pageCount;
        String sql =  new SQL(){
            {
                SELECT("blog.*");
                FROM("blog");

                WHERE("blog.bId in(select blog_type.bId from blog_type where tId = #{sId})");

                if(!Objects.equals(searchValue,null)&&!Objects.equals(searchValue,"%%")){
                    WHERE("title like #{searchValue}");
                }
            }
        }.toString()+limit;
        System.out.println(sql);
        return sql;
    }

}
