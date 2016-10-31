package com.lxsh.controller;

import java.util.List;

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
@SessionAttributes("user")
public class UserCtrl {
	
	@Resource(name="userService")
	private IUserService userService;

	/**
	 * 登录
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login", method= RequestMethod.POST)
	public String login(User user, Model model){
		Log.log.info("登录:"+user.getUname());
		List<User> list = userService.login(user);
		String result = "";
		if(list.size()==1){
			user = list.get(0);
			result = Const.SUCCESS;
		} else if (list.size()==0) {
			result = Const.NOT_EXIST;
		} else {
			result = Const.FAIL;
		}
		// 处理登录结果
		if(Const.SUCCESS.equals(result)){
			model.addAttribute("user", user);
			return "index_handle";
		} else if(Const.NOT_EXIST.equals(result)){
			model.addAttribute("info", "用户名或密码错误！");
			return "login";
		} else {
			model.addAttribute("info", "登录失败！");
			return "login";
		}
	}
	
	/**
	 * 注销
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session,Model model){
		Log.log.info("退出登录:"+session.getAttribute("user"));
		model.addAttribute("user", new User());
		session.invalidate();
		return "index_handle";
	}
	
	/**
	 * 注册时检查用户名是否存在
	 * @param username
	 * @return
	 */
	@RequestMapping("/checkusername")
	@ResponseBody
	public String checkUserName(String username){
		Log.log.info("check name:"+username);
		
		return userService.checkUserName(username);
	}
	
	/**
	 * 注册
	 * @param user
	 * @param model
	 * @return
	 */
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
