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
    /** ��¼*/
    public List<User> login(User user);
    /** �û������*/
    public List<User> checkUserName(String user);
    /** ע��*/
    public int register(User user);
}