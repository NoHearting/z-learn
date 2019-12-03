package com.zsj.dao;

import com.zsj.dao.provider.BlogProvider;
import com.zsj.domain.Blog;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface BlogDao {

    /**
     * 保存博客
     * @param blog
     */
    @Insert("insert into blog(title,content,writeTime,readTimes,uId) values(#{title},#{content},#{writeTime},#{readTimes},#{uId})")
    @Options(useGeneratedKeys = true,keyProperty = "bId",keyColumn = "bId")
    void saveBlog(Blog blog);

    /**
     * 添加博客类型信息
     * @param bId   博客id
     * @param tId   类型id
     */
    @Insert("insert into blog_type(bId,tId) values(#{bId},#{tId})")
    void addBlogTypeInfo(@Param("bId") int bId,@Param("tId") int tId);

    /**
     * 查询总的博客数
     * @return
     */
    @Select("select count(*) from blog")
    int totalCount();

    /**
     * 分页查询博客信息，不包括内容
     * @param searchValue
     * @param beginIndex
     * @param pageCount
     * @return
     */
    @SelectProvider(type = BlogProvider.class,method = "findBlogs")
    List<Blog> selectBlogs(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex, @Param("pageCount") int pageCount);

    /**
     * 根据id查询博客内容
     * @param id
     * @return
     */
    @Select("select * from blog where bId = #{id}")
    Blog selectBlog(int id);



    /**
     * 查询单一分类的所有博客
     * @param searchValue
     * @param beginIndex
     * @param pageCount
     * @param sId
     * @return
     */
    @SelectProvider(type = BlogProvider.class,method = "selectBlogsAndClassify")
    List<Blog> selectBlogsClassify(@Param("searchValue") String searchValue, @Param("beginIndex") int beginIndex, @Param("pageCount") int pageCount,@Param("sId") int sId );
}
