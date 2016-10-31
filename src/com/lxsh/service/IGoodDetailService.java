package com.lxsh.service;

import java.util.List;

import com.lxsh.model.GoodDetail;
import com.lxsh.model.SubGoodsKey;

public interface IGoodDetailService {
	
	/**
	 * 获取商品的详细信息
	 * @param gid 商品ID
	 * @return
	 */
	public List<GoodDetail> getGoodDetail(SubGoodsKey key);
	
	/**
	 * 获取最新商品
	 * @param key
	 * @return
	 */
	public List<GoodDetail> getRecentGoods();
}
