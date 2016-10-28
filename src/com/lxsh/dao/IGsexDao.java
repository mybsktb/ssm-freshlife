package com.lxsh.dao;

import com.lxsh.model.Gsex;

public interface IGsexDao {
    int deleteByPrimaryKey(Integer gsid);

    int insert(Gsex record);

    int insertSelective(Gsex record);

    Gsex selectByPrimaryKey(Integer gsid);

    int updateByPrimaryKeySelective(Gsex record);

    int updateByPrimaryKey(Gsex record);
}