

package com.java.plyd.service;

import java.util.List;

public interface IOrphansService 
{
	public void insert(Orphans u);
	public void update(Orphans op);
	public void delete(int Orphans_id);
	public List<Orphans> selectAll();
	public Orphans selectHeader(int Orphans_id);
}
