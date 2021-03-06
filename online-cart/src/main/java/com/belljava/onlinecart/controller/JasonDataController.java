package com.belljava.onlinecart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.belljava.dao.ProductDAO;
import com.belljava.dto.Product;

public class JasonDataController {
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/all/products")
	@ResponseBody
	public List<Product>getAllProducts(){
		
		return productDAO.listActiveProducts();
		
	}
	@RequestMapping("/category/{id}/products")
	@ResponseBody
	public List<Product>getProductsByCategory(@PathVariable int id){
		
		return productDAO.listActiveProductsByCategory(id);
		
	}
	

}
