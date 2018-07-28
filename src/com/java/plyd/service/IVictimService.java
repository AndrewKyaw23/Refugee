package com.java.plyd.service;

import java.util.List;

public interface IVictimService 
{
	public void insert(Victim vtm);
	public void update(Victim vtm);
	public void delete(int Victim_id);
	public List<Victim> selectAll();
	public Victim selectVictim(int Victim_id);

}
