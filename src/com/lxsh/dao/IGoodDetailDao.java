package com.lxsh.dao;

import java.util.List;

import com.lxsh.model.GoodDetail;
import com.lxsh.model.SubGoodsKey;

public interface IGoodDetailDao {
    int insert(GoodDetail record);

    int insertSelective(GoodDetail record);
    
    public List<GoodDetail> getGoodDetail(SubGoodsKey key);
    
    public List<GoodDetail> getRecentGoods();
}