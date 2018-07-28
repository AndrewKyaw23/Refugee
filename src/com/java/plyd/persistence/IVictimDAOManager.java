package com.java.plyd.persistence;

import java.util.List;

import com.java.plyd.service.Victim;



public interface IVictimDAOManager
{
	public void insert(Victim vtm);
	public void update(Victim vtm);
	public void delete(int Victim_id);
	public List<Victim> selectAll();
	public Victim selectVictim(int Victim_id);

}
