package com.lxsh.dao;

import com.lxsh.model.Brand;

public interface IBrandDao {
    int deleteByPrimaryKey(Integer bid);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);
}