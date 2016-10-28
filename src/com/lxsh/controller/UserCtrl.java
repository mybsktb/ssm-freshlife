package com.lxsh.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lxsh.common.Const;
import com.lxsh.model.User;
import com.lxsh.service.IUserService;
import com.lxsh.util.Log;

@Controller
@SessionAttributes("uname")
public class UserCtrl {
	
	@Resource(name="userService")
	private IUserService userService;

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value="/login", method= RequestMethod.POST)
	public String login(User user, Model model){
		Log.log.info("登录:"+user.getUname());
		String result = userService.login(user);
		if(Const.SUCCESS.equals(result)){
			model.addAttribute("uname", user.getUname());
			return "index";
		} else if(Const.NOT_EXIST.equals(result)){
			model.addAttribute("info", "用户名或密码错误！");
			return "login";
		} else {
			model.addAttribute("info", "登录失败！");
			return "login";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session,Model model){
		Log.log.info("退出登录:"+session.getAttribute("uname").toString());
		model.addAttribute("uname", "");
		session.invalidate();
		return "index";
	}
	
	@RequestMapping("/checkusername")
	@ResponseBody
	public String checkUserName(String username){
		Log.log.info("check name:"+username);
		
		return userService.checkUserName(username);
	}
	
	@RequestMapping("register")
	public String register(User user, Model model){
		if(user == null){
			model.addAttribute("r-info", "注册失败！");
			return "register";
		}
		Log.log.info("注册--用户名："+user.getUname());
		boolean result = userService.register(user);
		if(result){
			Log.log.info("注册成功！用户："+user.getUname()+" 自动跳转至首页...");
			return "forward:login";
		}
		Log.log.info("注册失败！用户名："+user.getUname());
		return "register";
	}
}
