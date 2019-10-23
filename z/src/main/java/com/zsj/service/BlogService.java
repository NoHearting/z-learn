package com.zsj.service;


import com.zsj.domain.Blog;
import com.zsj.domain.PageBean;

import java.util.List;

/**
 *
 */
public interface BlogService {

    /**
     * 保存博客
     * @param blog
     */
    void saveBlog(Blog blog, String labels);


    /**
     * 查询博客信息
     * @param searchValue
     * @param currPage
     * @param pageCount
     * @return
     */
    PageBean<Blog> selectBlogs(String searchValue, int currPage, int pageCount);
}
