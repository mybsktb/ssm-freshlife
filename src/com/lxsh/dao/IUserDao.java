package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.User;

@Repository
public interface IUserDao {
    int deleteByPrimaryKey(Integer id);

//    @Insert("insert into user (username, password) value(#{username},#{password})")
    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}