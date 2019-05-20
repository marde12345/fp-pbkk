package com.sikokes.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sikokes.dao.UserDAO;
import com.sikokes.model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public User getUserByUsername(String username) {
		return userDAO.getUserByUsername(username);
	}

}
