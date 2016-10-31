package com.lxsh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.IGoodDetailDao;
import com.lxsh.model.GoodDetail;
import com.lxsh.model.SubGoodsKey;
import com.lxsh.service.IGoodDetailService;
import com.lxsh.util.Log;

@Service("goodDetailService")
public class GoodDetailServiceImpl implements IGoodDetailService {
	@Resource
	IGoodDetailDao goodDetailDao;

	@Override
	public List<GoodDetail> getGoodDetail(SubGoodsKey key) {
		// TODO Auto-generated method stub
		Log.log.info("service gid:"+key.getGid());
		return goodDetailDao.getGoodDetail(key);
	}

	@Override
	public List<GoodDetail> getRecentGoods() {
		// TODO Auto-generated method stub
		return goodDetailDao.getRecentGoods();
	}

}
