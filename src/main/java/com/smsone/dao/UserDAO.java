package com.smsone.dao;

import com.smsone.model.User;

public interface UserDAO {
	public void saveUser(User user);
	public boolean checkEmail(User user);
	public boolean checkContactNumber(User user);
	public boolean checkAadharNumber(User user);
	public boolean checkLogin(User user);
}
