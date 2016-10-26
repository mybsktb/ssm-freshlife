package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.Users;

@Repository
public interface IUsersDao {
    int deleteByPrimaryKey(Integer uid);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
}