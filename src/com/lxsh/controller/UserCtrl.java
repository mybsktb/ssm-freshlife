package com.lxsh.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lxsh.common.Const;
import com.lxsh.model.User;
import com.lxsh.service.IUserService;

@Controller
@SessionAttributes("username")
public class UserCtrl {
	
	@Resource(name="userService")
	private IUserService userService;

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/login")
	public String login(User user, Model model){
		System.out.println(user);
		String result = userService.login(user);
		if(Const.SUCCESS.equals(result)){
			model.addAttribute("username", user.getUsername());
			return "index";
		} else if(Const.NOT_EXIST.equals(result)){
			model.addAttribute("info", "用户名或密码错误！");
			return "login";
		} else {
			model.addAttribute("info", "登录失败！");
			return "login";
		}
	}
}
