package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.ShopCart;

@Repository
public interface IShopCartDao {
    int deleteByPrimaryKey(Integer cid);

    int insert(ShopCart record);

    int insertSelective(ShopCart record);

    ShopCart selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(ShopCart record);

    int updateByPrimaryKey(ShopCart record);
}