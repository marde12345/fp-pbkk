package com.sikokes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sikokes.dao.TagDAO;
import com.sikokes.model.Tag;

@Service
public class TagServiceImpl implements TagService {

	@Autowired
	private TagDAO tagDAO;

	@Override
	@Transactional
	public List<Tag> getTags() {
		return tagDAO.getTags();
	}
	
	
}
