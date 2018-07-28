package com.java.plyd.persistence;

import java.util.List;

import com.java.plyd.service.Orphans;



public interface IOrphansDAOManager 
{
	public void insert(Orphans op);
	public void update(Orphans hd);
	public void delete(int Orphans_id);
	public List<Orphans> selectAll();
	public Orphans selectOrphans(int Orphans_id);
}
