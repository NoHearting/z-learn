package com.zsj.dao;

import com.zsj.domain.Problem;
import com.zsj.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户持久层接口
 */
@Repository
public interface UserDao {

    @Select("select * from user")
    List<User> findAll();


    @Insert("insert into user(username,password,address,gender,phone,email) values(" +
            "#{username},#{password},#{address},#{gender},#{phone},#{phone})")
    void register(User user);

    @Select("select * from user where username = #{username} and password = #{password}")
    User findOne(User user);


    /**
     * 测试   添加数据用  可以删除
     * @param problem
     */
    @Insert("Insert into problems(problem,bigType,smallType) values(#{problem},#{bigType},#{smallType})")
    void add(Problem problem);
}
