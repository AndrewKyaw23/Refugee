package com.java.plyd.persistence;

import java.util.List;


import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.java.plyd.service.Header;

@Repository("HeaderDAOManager")
public class HeaderDAOManager  extends SqlMapClientDaoSupport implements
IHeaderDAOManager 


{

	@Override
	public void insert(Header hd) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().insert("Header.insertHeader", hd);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void update(Header hd) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().update("Header.updateHeader", hd);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public void delete(int Header_id) {
		// TODO Auto-generated method stub
		try {
			getSqlMapClientTemplate().delete("Header.deleteHeader", Header_id);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	@Override
	public List<Header> selectAll() {
		// TODO Auto-generated method stub
		List<Header> Headerlist = null;
		try {
			return getSqlMapClientTemplate().queryForList("Header.selectAllHeader");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@Override
	public Header selectHeader(int Header_id) {
		// TODO Auto-generated method stub
		try {
			return (Header) getSqlMapClientTemplate().queryForObject(
					"Header.selectHeader", Header_id);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

}
