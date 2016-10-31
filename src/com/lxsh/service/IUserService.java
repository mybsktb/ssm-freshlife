package com.lxsh.service;

import java.util.List;

import com.lxsh.model.User;

public interface IUserService {
	public User getUserById(int userId);
	
	public int insert(User user);
	
	public List<User> login(User user);
	
	public String checkUserName(String username);
	
	public boolean register(User user);
}