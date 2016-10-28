package com.lxsh.dao;

import com.lxsh.model.Gstyle;

public interface IGstyleDao {
    int deleteByPrimaryKey(Integer glid);

    int insert(Gstyle record);

    int insertSelective(Gstyle record);

    Gstyle selectByPrimaryKey(Integer glid);

    int updateByPrimaryKeySelective(Gstyle record);

    int updateByPrimaryKey(Gstyle record);
}