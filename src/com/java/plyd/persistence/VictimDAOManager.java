package com.java.plyd.persistence;

import java.util.List;


import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.java.plyd.service.Victim;
@Repository("VictimDAOManager")
public class VictimDAOManager extends SqlMapClientDaoSupport implements
IVictimDAOManager  {

	@Override
	public void insert(Victim vtm) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().insert("Victim.insertVictim", vtm);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void update(Victim vtm) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().update("Victim.updateVictim", vtm);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void delete(int Victim_id) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().delete("Victim.deleteVictim", Victim_id);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public List<Victim> selectAll() {
		// TODO Auto-generated method stub
		List<Victim> Victimlist = null;
		try {
			return getSqlMapClientTemplate().queryForList("Victim.selectAllVictim");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public Victim selectVictim(int Victim_id) {
		// TODO Auto-generated method stub
		try {
			return (Victim) getSqlMapClientTemplate().queryForObject(
					"Victim.selectVictim", Victim_id);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

}
