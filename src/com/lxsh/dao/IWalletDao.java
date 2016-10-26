package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.Wallet;

@Repository
public interface IWalletDao {
    int deleteByPrimaryKey(Integer wid);

    int insert(Wallet record);

    int insertSelective(Wallet record);

    Wallet selectByPrimaryKey(Integer wid);

    int updateByPrimaryKeySelective(Wallet record);

    int updateByPrimaryKey(Wallet record);
}