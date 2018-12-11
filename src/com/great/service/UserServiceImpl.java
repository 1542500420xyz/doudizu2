package com.great.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.great.bean.User;
import com.great.mapper.UserMapper;
@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserMapper usermapper;
	@Override
	public List<User> queryAllUser() {
		return usermapper.queryAllUser();
	}

	@Override
	public int startUser(String userName,String stateName) {
		return usermapper.startUser(userName,stateName);
	}

	@Override
	public int stopUser(String userName, String stateName) {
		return usermapper.stopUser(userName, stateName);
	}

	@Override
	public User userLogin(String userName, String password) {
		return usermapper.userLogin(userName, password);
	}

}
