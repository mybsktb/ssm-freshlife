package com.lxsh.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsh.model.GoodDetail;
import com.lxsh.model.Goods;
import com.lxsh.service.IGoodDetailService;
import com.lxsh.service.IGoodsService;
import com.lxsh.util.Log;

@Controller
public class PageCtrl {
	
	@Resource
	private IGoodsService goodsService;

	@Resource
	private IGoodDetailService goodDetailService;
	
	@RequestMapping("/index_jsp")
	public String showIndex(Model model){
		List<Goods> list = goodsService.getRecentGoods();
		Log.log.info("list-size:"+list.size());
		model.addAttribute("list_recent", list);
		return "index";
	}
	
	@RequestMapping("/single_jsp")
	public String showSingle(Integer gid,Model model){
		List<GoodDetail> list_detail = goodDetailService.getGoodDetail(gid);
		model.addAttribute("detail", list_detail);
		return "single";
	}
}
