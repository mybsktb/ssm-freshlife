package com.lxsh.dao;

import com.lxsh.model.ShopCart;
import com.lxsh.model.ShopCartKey;

public interface IShopCartDao {
    int deleteByPrimaryKey(ShopCartKey key);

    int insert(ShopCart record);

    int insertSelective(ShopCart record);

    ShopCart selectByPrimaryKey(ShopCartKey key);

    int updateByPrimaryKeySelective(ShopCart record);

    int updateByPrimaryKey(ShopCart record);
}