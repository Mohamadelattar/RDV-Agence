package com.RDV.Dao;


import java.util.List;

public interface DaoInterface<T> {
	 
	T getById(int id);
	void save(T entity);
	void update(T entity);
    void delete(int id);
	List<T> getAll(String table);

	 
	 
	 

}
