package com.great.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.great.bean.User;


public interface UserMapper {
	public List<User> queryAllUser();
	public User userLogin(String userName,String password);
	public int startUser(String userName,String stateName);
	public int stopUser(String userName,String stateName);
}
