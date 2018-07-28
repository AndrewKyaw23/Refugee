package com.java.plyd.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.plyd.persistence.IHeaderDAOManager;


@Service(value = "HeaderService")
public class HeaderService implements IHeaderService 
{
	@Resource(name = "HeaderDAOManager")

	IHeaderDAOManager manager;
	
	@Override
	public void insert(Header hd) {
		// TODO Auto-generated method stub
		manager.insert(hd);
	}

	@Override
	public void update(Header hd) {
		// TODO Auto-generated method stub
		manager.update(hd);
	}

	@Override
	public void delete(int Header_id) {
		// TODO Auto-generated method stub
		manager.delete(Header_id);
	}

	@Override
	public List<Header> selectAll() {
		// TODO Auto-generated method stub
		return manager.selectAll();
	}

	@Override
	public Header selectHeader(int Header_id) {
		// TODO Auto-generated method stub
		return manager.selectHeader(Header_id);
	}

}
