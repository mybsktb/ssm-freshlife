package com.lxsh.service;

import java.util.List;

import com.lxsh.model.ShopCart;
import com.lxsh.model.ShopCartKey;

public interface IShopCartService {
	/**
	 * 添加到购物车
	 * @param shopCart
	 */
	public boolean addToShopCart(ShopCart shopCart);
	
	/**
	 * 检查购物车内商品是否存在
	 * @param shopCart
	 * @return
	 */
	public ShopCart checkExist(ShopCartKey key);
	
	/**
	 * 通过用户ID取购物车数据
	 * @param uid
	 * @return
	 */
	public List<ShopCart> getShopCartByUid(Integer uid);
	
}
