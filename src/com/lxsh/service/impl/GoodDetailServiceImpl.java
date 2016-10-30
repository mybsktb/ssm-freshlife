package com.lxsh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.IGoodDetailDao;
import com.lxsh.model.GoodDetail;
import com.lxsh.service.IGoodDetailService;
import com.lxsh.util.Log;

@Service("goodDetailService")
public class GoodDetailServiceImpl implements IGoodDetailService {
	@Resource
	IGoodDetailDao goodDetailDao;

	@Override
	public List<GoodDetail> getGoodDetail(Integer gid) {
		// TODO Auto-generated method stub
		Log.log.info("service gid:"+gid);
		return goodDetailDao.getGoodDetail(gid);
	}

}
