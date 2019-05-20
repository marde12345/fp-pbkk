package com.sikokes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sikokes.dao.RoleDAO;
import com.sikokes.model.Role;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleDAO roleDAO;
	
	@Override
	@Transactional
	public List<Role> getRoles() {
		return roleDAO.getRoles();
	}

}
