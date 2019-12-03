package com.zsj.service;

import com.zsj.domain.Blog;
import com.zsj.domain.PageBean;

import java.util.List;

public interface LanguageService {

    public PageBean<Blog> selectBlogs(String searchValue, int currPage, int pageCount,int initKey);
}
