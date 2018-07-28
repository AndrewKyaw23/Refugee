package com.java.plyd.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.plyd.persistence.IOrphansDAOManager;



@Service(value = "OrphansService")
public class OrphansService  implements IOrphansService {

	
	@Resource(name = "OrphansDAOManager")

	IOrphansDAOManager manager;
	@Override
	public void insert(Orphans op) {
		// TODO Auto-generated method stub
		manager.insert(op);
	}

	@Override
	public void update(Orphans op) {
		// TODO Auto-generated method stub
		manager.update(op);
	}

	@Override
	public void delete(int Orphans_id) {
		// TODO Auto-generated method stub
	manager.delete(Orphans_id);	
	}

	@Override
	public List<Orphans> selectAll() {
		// TODO Auto-generated method stub
		return manager.selectAll();
	}

	@Override
	public Orphans selectHeader(int Orphans_id) {
		// TODO Auto-generated method stub
		return manager.selectOrphans(Orphans_id);
	}

}
