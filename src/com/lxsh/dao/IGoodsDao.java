package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.Goods;

@Repository
public interface IGoodsDao {
    int deleteByPrimaryKey(Integer gid);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer gid);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
}