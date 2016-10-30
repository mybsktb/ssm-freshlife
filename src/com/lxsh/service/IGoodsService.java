package com.lxsh.service;

import java.util.List;

import com.lxsh.model.GoodDetail;
import com.lxsh.model.Goods;

public interface IGoodsService {
	
	/**
	 * 获取最新商品
	 * @return
	 */
	public List<Goods> getRecentGoods();
	
	/**
	 * 获取商品详细信息
	 * @param gid
	 * @return
	 */
	public List<GoodDetail> getGoodDetail(int gid);
}
