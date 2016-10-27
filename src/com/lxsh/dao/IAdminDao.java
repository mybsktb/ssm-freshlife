package com.lxsh.dao;

import com.lxsh.model.Admin;

public interface IAdminDao {
    int deleteByPrimaryKey(Integer rid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}