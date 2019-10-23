package com.etlforma.thecoolbook.model;

import java.util.List;

public interface Dao<E> {
	
	public Boolean create(E entity);
	
	public List<E> read();
	
	public int update(E entity);
	
	public int delete(Integer id);
	
	public E get(Integer id);
	
}
