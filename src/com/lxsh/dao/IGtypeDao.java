package com.lxsh.dao;

import com.lxsh.model.Gtype;

public interface IGtypeDao {
    int deleteByPrimaryKey(Integer gtid);

    int insert(Gtype record);

    int insertSelective(Gtype record);

    Gtype selectByPrimaryKey(Integer gtid);

    int updateByPrimaryKeySelective(Gtype record);

    int updateByPrimaryKey(Gtype record);
}