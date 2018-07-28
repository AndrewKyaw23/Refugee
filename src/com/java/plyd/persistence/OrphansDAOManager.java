package com.java.plyd.persistence;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;


import com.java.plyd.service.Orphans;

@Repository("OrphansDAOManager")
public class OrphansDAOManager extends SqlMapClientDaoSupport implements
IOrphansDAOManager  {

	@Override
	public void insert(Orphans op) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().insert("Orphans.insertOrphans", op);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void update(Orphans op) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().update("Orphans.updateOrphans", op);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void delete(int Orphans_id) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().delete("Orphans.deleteOrphans", Orphans_id);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public List<Orphans> selectAll() {
		// TODO Auto-generated method stub
		List<Orphans> Orphanslist = null;
		try {
			return getSqlMapClientTemplate().queryForList("Orphans.selectAllOrphans");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public Orphans selectOrphans(int Orphans_id) {
		// TODO Auto-generated method stub
		try {
			return (Orphans) getSqlMapClientTemplate().queryForObject(
					"Orphans.selectOrphans", Orphans_id);

		} catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		return null;
	}

}
