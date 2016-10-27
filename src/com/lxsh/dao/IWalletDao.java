package com.lxsh.dao;

import com.lxsh.model.Wallet;

public interface IWalletDao {
    int deleteByPrimaryKey(Integer wid);

    int insert(Wallet record);

    int insertSelective(Wallet record);

    Wallet selectByPrimaryKey(Integer wid);

    int updateByPrimaryKeySelective(Wallet record);

    int updateByPrimaryKey(Wallet record);
}