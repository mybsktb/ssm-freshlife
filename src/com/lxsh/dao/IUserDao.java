package com.lxsh.dao;

import java.util.List;

import com.lxsh.model.User;

public interface IUserDao {
    public int deleteByPrimaryKey(Integer uid);

    public int insert(User record);

    public int insertSelective(User record);

    public User selectByPrimaryKey(Integer uid);

    public int updateByPrimaryKeySelective(User record);

    public int updateByPrimaryKey(User record);
    /** 登录*/
    public List<User> login(User user);
    /** 用户名检查*/
    public List<User> checkUserName(String user);
    /** 注册*/
    public int register(User user);
}