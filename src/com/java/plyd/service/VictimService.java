package com.java.plyd.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.java.plyd.persistence.IVictimDAOManager;


@Service(value = "VictimService")
public class VictimService  implements IVictimService
{

	@Resource(name = "VictimDAOManager")

	IVictimDAOManager manager;
	
	@Override
	public void insert(Victim vtm) {
		// TODO Auto-generated method stub
		manager.insert(vtm);
		
	}

	@Override
	public void update(Victim vtm) {
		// TODO Auto-generated method stub
		manager.update(vtm);
	}

	@Override
	public void delete(int Victim_id) {
		// TODO Auto-generated method stub
		manager.delete(Victim_id);
		
	}

	@Override
	public List<Victim> selectAll() {
		// TODO Auto-generated method stub
		return manager.selectAll();
	}

	@Override
	public Victim selectVictim(int Victim_id) {
		// TODO Auto-generated method stub
		return manager.selectVictim(Victim_id);
	}

}
