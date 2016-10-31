package com.lxsh.dao;

import com.lxsh.model.SubGoods;
import com.lxsh.model.SubGoodsKey;

public interface ISubGoodsDao {
    int deleteByPrimaryKey(SubGoodsKey key);

    int insert(SubGoods record);

    int insertSelective(SubGoods record);

    SubGoods selectByPrimaryKey(SubGoodsKey key);

    int updateByPrimaryKeySelective(SubGoods record);

    int updateByPrimaryKey(SubGoods record);
}