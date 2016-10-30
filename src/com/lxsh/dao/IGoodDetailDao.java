package com.lxsh.dao;

import java.util.List;

import com.lxsh.model.GoodDetail;

public interface IGoodDetailDao {
    int insert(GoodDetail record);

    int insertSelective(GoodDetail record);
    
    public List<GoodDetail> getGoodDetail(Integer gid);
}