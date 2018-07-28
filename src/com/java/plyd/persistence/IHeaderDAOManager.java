package com.java.plyd.persistence;

import java.util.List;

import com.java.plyd.service.Header;



public interface IHeaderDAOManager
{
	public void insert(Header hd);
	public void update(Header hd);
	public void delete(int Header_id);
	public List<Header> selectAll();
	public Header selectHeader(int Header_id);

}
