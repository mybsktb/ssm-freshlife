package com.lxsh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.common.Const;
import com.lxsh.dao.IUserDao;
import com.lxsh.model.User;
import com.lxsh.service.IUserService;
import com.lxsh.util.StringUtil;

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

	@Override
	public String checkUserName(String username) {
		List<User> list = userDao.checkUserName(username);
		if(list.size()!=0){
			return Const.FAIL;
		}
		return Const.SUCCESS;
	}

	@Override
	public boolean register(User user) {
		String uname = user.getUname();
		if(StringUtil.isEmpty(uname))
			return false;
		if(this.checkUserName(uname).equals(Const.FAIL))
			return false;
		// 注册
		int result = userDao.register(user);
		// 结果判断
		if(result==1)
			return true;
		return false;
	}
}