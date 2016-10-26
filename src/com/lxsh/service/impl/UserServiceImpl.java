package com.lxsh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.IUserDao;
import com.lxsh.model.User;
import com.lxsh.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	@Resource
	private IUserDao userDao;

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return userDao.selectByPrimaryKey(userId);
	}

	public int insert(User user) {
		return userDao.insertSelective(user);
	}

	@Override
	public String login(User user) {
		
		List<User> list = userDao.login(user);
		
		if(list.size()==1)
			return "success";
		else if(list.size()==0)
			return "not-exist";
		return "fail";
	}
}