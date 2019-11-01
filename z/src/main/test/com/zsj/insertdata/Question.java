package com.zsj.insertdata;

import com.zsj.dao.QuestionDao;
import com.zsj.domain.Problem;
import com.zsj.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.*;

public class Question {
    private ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationConfig.xml");
    private QuestionDao questionDao = (QuestionDao) ac.getBean("questionDao");


    /**
     * 添加问题到数据库
     * @throws IOException
     */
    @Test
    public void addQuestion() throws IOException {
        BufferedReader in = new BufferedReader(new FileReader("D:\\Java\\Project\\zlearn\\projectDBdata\\problems.txt"));
        String s = null;
        int i = 0;
        while((s=in.readLine())!=null){
            if(i++%15==0){
                questionDao.addProblem(new Problem(1,s,s,1));
            }else{
                questionDao.addProblem(new Problem(1,s,"",0));
            }

        }
    }


}
