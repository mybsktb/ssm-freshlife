package com.lxsh.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.ISubGoodsDao;
import com.lxsh.model.SubGoods;
import com.lxsh.model.SubGoodsKey;
import com.lxsh.service.ISubGoodsService;

@Service("subGoodsService")
public class SubGoodsServiceImpl implements ISubGoodsService {
	@Resource
	ISubGoodsDao subGoodsDao;
	
	@Override
	public SubGoods getSubGood(SubGoodsKey key) {
		return subGoodsDao.selectByPrimaryKey(key);
	}

}
