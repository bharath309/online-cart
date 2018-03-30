package com.belljava.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.belljava.dto.Category;


@Component
public interface CategoryDAO {
	
	 Category get(int id);
	 List<Category> list();	
	   boolean add(Category category);
	  boolean update(Category category);
	   boolean delete(Category category);

}
