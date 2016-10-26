package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.Message;

@Repository
public interface IMessageDao {
    int deleteByPrimaryKey(Integer mid);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer mid);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
}