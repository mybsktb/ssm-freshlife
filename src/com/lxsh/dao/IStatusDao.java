package com.lxsh.dao;

import com.lxsh.model.Status;

public interface IStatusDao {
    int deleteByPrimaryKey(Integer statusid);

    int insert(Status record);

    int insertSelective(Status record);

    Status selectByPrimaryKey(Integer statusid);

    int updateByPrimaryKeySelective(Status record);

    int updateByPrimaryKey(Status record);
}