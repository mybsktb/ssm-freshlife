package com.lxsh.dao;

import java.util.List;

import com.lxsh.model.Goods;

public interface IGoodsDao {
    int deleteByPrimaryKey(Integer gid);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer gid);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKeyWithBLOBs(Goods record);

    int updateByPrimaryKey(Goods record);
    
    public List<Goods> getRecentGoods();
}