package com.lxsh.dao;

import com.lxsh.model.ShopCart;

public interface IShopCartDao {
    int deleteByPrimaryKey(Integer cid);

    int insert(ShopCart record);

    int insertSelective(ShopCart record);

    ShopCart selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(ShopCart record);

    int updateByPrimaryKey(ShopCart record);
}