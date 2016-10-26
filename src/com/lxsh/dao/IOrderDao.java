package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.Order;

@Repository
public interface IOrderDao {
    int deleteByPrimaryKey(Integer oid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer oid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}