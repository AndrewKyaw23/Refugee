package com.java.plyd.service;

import java.util.List;

public interface IHeaderService
{
	public void insert(Header hd);
	public void update(Header hd);
	public void delete(int Header_id);
	public List<Header> selectAll();
	public Header selectHeader(int Header_id);
}
