package com.lxsh.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lxsh.model.ShopCart;
import com.lxsh.model.User;
import com.lxsh.service.IShopCartService;
import com.lxsh.util.Log;
import com.lxsh.util.StringUtil;

@Controller
public class ShopCartCtrl {
	@Resource
	IShopCartService shopCartService;

	@RequestMapping("/shopcart")
	public String shopcart(HttpSession session,Model model) {
		// 获取session
		User user = (User) session.getAttribute("user");
		// 判断用户是否登录
		if (user == null || StringUtil.isEmpty(user.getUname())) {
			// 未登录
			return "signup";
		}
		// 获取用户购物车商品
		List<ShopCart> shopCartList = shopCartService.getShopCartByUid(user.getUid());
		model.addAttribute("shopCartList", shopCartList);
		// 已登录
		return "forward:WEB-INF/jsp/checkout.jsp";
	}

	/**
	 * 添加到购物车
	 * @param shopCart
	 * @param model
	 * @param session
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("/addToShopCart")
	@ResponseBody
	public boolean addToShopCart(ShopCart shopCart, Model model, HttpSession session, HttpServletResponse response)
			throws IOException {
		// 获取session
		User user = (User) session.getAttribute("user");
		// session存在
		if (user != null && !StringUtil.isEmpty(user.getUname())) {
			Log.log.info("ctrl uid:" + user.getUid());
			shopCart.setUid(user.getUid());
		} else {
			// 不存在，跳转到登录页面
			response.sendRedirect("signup.jsp");
		}
		// 返回添加结果
		return shopCartService.addToShopCart(shopCart);
	}
}
