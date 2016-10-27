package com.lxsh.dao;

import com.lxsh.model.Collection;

public interface ICollectionDao {
    int deleteByPrimaryKey(Integer cid);

    int insert(Collection record);

    int insertSelective(Collection record);

    Collection selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Collection record);

    int updateByPrimaryKey(Collection record);
}