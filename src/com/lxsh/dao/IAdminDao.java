package com.lxsh.dao;

import org.springframework.stereotype.Repository;

import com.lxsh.model.Admin;

@Repository
public interface IAdminDao {
    int deleteByPrimaryKey(Integer rid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}