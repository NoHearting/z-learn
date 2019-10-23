package com.zsj.service.impl;

import com.zsj.dao.BlogDao;
import com.zsj.domain.Blog;
import com.zsj.domain.PageBean;
import com.zsj.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("blogService")
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;

    /**
     * 保存博客内容和博客所属的类别
     * @param blog
     * @param labels
     */
    @Override
    public void saveBlog(Blog blog,String labels) {
        blogDao.saveBlog(blog);
        System.out.println("博客id:"+blog.getbId());
        int bId = blog.getbId();
        List<Integer> labelList = transferLabels(labels);
        for(Integer type:labelList){
            blogDao.addBlogTypeInfo(bId,type);
        }
    }

    @Override
    public PageBean<Blog> selectBlogs(String searchValue, int currPage, int pageCount) {
        int totalCount = blogDao.totalCount();
        int totalPage = totalCount/pageCount==0?totalCount/pageCount:totalCount/pageCount+1;
        totalPage = totalCount<=pageCount ? 1 :totalPage;
        int beginIndex = (currPage-1)*pageCount;
        PageBean<Blog> pageBean = new PageBean<>();

        pageBean.setTotalPage(totalPage);
        pageBean.setPageSize(pageCount);
        pageBean.setTotalCount(totalCount);
        pageBean.setCurrentPage(currPage);
        searchValue = "%"+searchValue+"%";
        List<Blog> blogs = blogDao.selectBlogs(searchValue, beginIndex, pageCount);
        pageBean.setList(blogs);

        return pageBean;
    }


    /**
     * 将字符串表示的博客类型信息转化为Map类型，方便存入数据库
     * @param labels
     * @return
     */
    public List<Integer> transferLabels(String labels){
        List<Integer>result = new ArrayList<>();
        labels = labels.replaceAll("\"","");
        System.out.println("去除\"之后："+labels);
        labels = labels.substring(1, labels.length() - 1);
        System.out.println("去除[]之后："+labels);
        String[] split = labels.split(",");
        for(String str:split){
            result.add(Integer.parseInt(str));
        }
        return result;
    }
}
