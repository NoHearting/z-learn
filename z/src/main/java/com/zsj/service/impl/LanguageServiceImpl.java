package com.zsj.service.impl;

import com.zsj.dao.BlogDao;
import com.zsj.dao.LanguageDao;
import com.zsj.domain.Blog;
import com.zsj.domain.PageBean;
import com.zsj.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LanguageServiceImpl implements LanguageService {

    @Autowired
    private BlogDao blogDao;

    @Override
    public PageBean<Blog> selectBlogs(String searchValue, int currPage, int pageCount,int initKey) {
        PageBean<Blog> pageBean = new PageBean<>();
        try{
            int beginIndex = (currPage-1)*pageCount;
            searchValue = "%"+searchValue+"%";
            List<Blog> blogs = blogDao.selectBlogsClassify(searchValue, beginIndex, pageCount,initKey);
            int totalCount = blogs.size();
            int totalPage = totalCount/pageCount==0?totalCount/pageCount:totalCount/pageCount+1;
            totalPage = totalCount<=pageCount ? 1 :totalPage;

            pageBean.setTotalPage(totalPage);
            pageBean.setPageSize(pageCount);
            pageBean.setTotalCount(totalCount);
            pageBean.setCurrentPage(currPage);
            pageBean.setList(blogs);
            return pageBean;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
