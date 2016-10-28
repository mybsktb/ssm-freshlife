package com.lxsh.dao;

import com.lxsh.model.Collection;
import com.lxsh.model.CollectionKey;

public interface ICollectionDao {
    int deleteByPrimaryKey(CollectionKey key);

    int insert(Collection record);

    int insertSelective(Collection record);

    Collection selectByPrimaryKey(CollectionKey key);

    int updateByPrimaryKeySelective(Collection record);

    int updateByPrimaryKey(Collection record);
}