package com.lxsh.dao;

import com.lxsh.model.Color;

public interface IColorDao {
    int deleteByPrimaryKey(Integer cid);

    int insert(Color record);

    int insertSelective(Color record);

    Color selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Color record);

    int updateByPrimaryKey(Color record);
}