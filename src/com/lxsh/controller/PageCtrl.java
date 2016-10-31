package com.lxsh.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lxsh.model.GoodDetail;
import com.lxsh.model.ShopCart;
import com.lxsh.model.SubGoodsKey;
import com.lxsh.model.User;
import com.lxsh.service.IGoodDetailService;
import com.lxsh.service.IGoodsService;
import com.lxsh.service.IShopCartService;
import com.lxsh.service.ISubGoodsService;
import com.lxsh.util.StringUtil;

@Controller
@SessionAttributes("shopCartList")
public class PageCtrl {
	
	@Resource
	private IGoodsService goodsService;
	@Resource
	private IGoodDetailService goodDetailService;
	@Resource
	private ISubGoodsService subGoodsService;
	@Resource
	private IShopCartService shopCartService;
	
	@RequestMapping("/index_jsp")
	public String showIndex(Model model,HttpSession session){
		List<GoodDetail> list = goodDetailService.getRecentGoods();
		model.addAttribute("list-recent", list);
		// 获取session
		User user = (User) session.getAttribute("user");
		// 判断用户是否登录
		if (user != null && !StringUtil.isEmpty(user.getUname())) {
			// 获取用户购物车商品
			List<ShopCart> shopCartList = shopCartService.getShopCartByUid(user.getUid());
			model.addAttribute("shopCartList", shopCartList);
		}
		return "index";
	}
	
	@RequestMapping("/single_jsp")
	public String showSingle(SubGoodsKey key,Model model){
		List<GoodDetail> list_detail = goodDetailService.getGoodDetail(key);
		model.addAttribute("detail", list_detail);
		return "single";
	}
	
	@RequestMapping("/personal_jsp")
	public String showPersonal(Model model,HttpSession session){
		// 获取session
		User user = (User) session.getAttribute("user");
		// 判断用户是否登录
		if (user != null && !StringUtil.isEmpty(user.getUname())) {
			return "forward:WEB-INF/jsp/personal.jsp";
		}
		return "signup";
	}
}
