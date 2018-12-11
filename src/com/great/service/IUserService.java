package com.great.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.great.bean.User;
@Component
public interface IUserService {
	public List<User> queryAllUser();
	public int startUser(String userName,String stateName);
	public int stopUser(String userName,String stateName);
	public User userLogin(String userName,String password);
}
