package com.lxsh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.IGoodDetailDao;
import com.lxsh.dao.IGoodsDao;
import com.lxsh.model.GoodDetail;
import com.lxsh.model.Goods;
import com.lxsh.service.IGoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements IGoodsService {

	@Resource
	private IGoodsDao goodsDao;
	@Resource
	private IGoodDetailDao goodDetalDao;
	
	@Override
	public List<Goods> getRecentGoods() {
		
		return goodsDao.getRecentGoods();
	}

	@Override
	public List<GoodDetail> getGoodDetail(int gid) {
		// TODO Auto-generated method stub
		return null;
	}

}
