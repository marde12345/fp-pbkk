package com.sikokes.dao;

import com.sikokes.model.User;

public interface UserDAO {
	public User getUserByUsername(String username);
}
