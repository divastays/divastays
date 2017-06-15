package com.smsone.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smsone.dao.UserDAO;
import com.smsone.model.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;
	public void saveUser(User user)
	{
		userDAO.saveUser(user);
	}
	public boolean checkEmail(User user) {
		return userDAO.checkEmail(user);
	}
	public boolean checkContactNumber(User user) {
		return userDAO.checkContactNumber(user);
	}
	public boolean checkAadharNumber(User user) {
		return userDAO.checkAadharNumber(user);
	}
	public boolean checkLogin(User user) {
		return userDAO.checkLogin(user);
	}

}
