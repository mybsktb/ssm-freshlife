package com.lxsh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.IShopCartDao;
import com.lxsh.model.ShopCart;
import com.lxsh.model.ShopCartKey;
import com.lxsh.service.IShopCartService;
import com.lxsh.util.Log;

@Service("shopCartService")
public class ShopCartServiceImpl implements IShopCartService {
	@Resource
	IShopCartDao shopCartDao;
	
	@Override
	public boolean addToShopCart(ShopCart shopCart) {
		if(shopCart == null){
			return false;
		}
		Log.log.info("uid"+shopCart.getUid());
		ShopCart shopCartTmp = this.checkExist(shopCart);
		if(shopCartTmp != null){
			int countNum = shopCart.getNum() + shopCartTmp.getNum();
			shopCart.setNum(countNum);
			int result = shopCartDao.updateByPrimaryKey(shopCart);
			if(result == 1){
				return true;
			}
			return false;
		}
		int result = shopCartDao.insert(shopCart);
		if(result==1)
			return true;
		return false;
	}

	@Override
	public ShopCart checkExist(ShopCartKey key) {
		return shopCartDao.selectByPrimaryKey(key);
	}

	@Override
	public List<ShopCart> getShopCartByUid(Integer uid) {
		
		return shopCartDao.getShopCartByUid(uid);
	}

}
