package com.zsj.dao;

import com.zsj.domain.User;
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
}
