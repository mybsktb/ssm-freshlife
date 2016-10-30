package com.lxsh.service;

import java.util.List;

import com.lxsh.model.GoodDetail;

public interface IGoodDetailService {
	
	/**
	 * 获取商品的详细信息
	 * @param gid 商品ID
	 * @return
	 */
	public List<GoodDetail> getGoodDetail(Integer gid);
}
