package com.lxsh.service;

import com.lxsh.model.User;

public interface IUserService {
	public User getUserById(int userId);
	
	public int insert(User user);
}