package com.lxsh.dao;

import com.lxsh.model.GoodDetail;

public interface IGoodDetailDao {
    int insert(GoodDetail record);

    int insertSelective(GoodDetail record);
}