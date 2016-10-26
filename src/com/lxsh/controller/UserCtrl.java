package com.lxsh.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsh.model.User;
import com.lxsh.service.IUserService;

@Controller
public class UserCtrl {
	
	@Resource(name="userService")
	private IUserService userService;

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/login")
	public String login(int id, Model model){
		User user = userService.getUserById(id);
		model.addAttribute("username", user.getUsername());
		return "index";
	}
}
