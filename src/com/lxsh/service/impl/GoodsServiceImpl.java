package com.lxsh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.IGoodsDao;
import com.lxsh.model.Goods;
import com.lxsh.service.IGoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements IGoodsService {

	@Resource
	private IGoodsDao goodsDao;
	
	@Override
	public List<Goods> getRecentGoods() {
		
		return goodsDao.getRecentGoods();
	}

}
