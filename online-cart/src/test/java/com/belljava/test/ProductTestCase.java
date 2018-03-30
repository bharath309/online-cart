package com.belljava.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.belljava.dao.ProductDAO;
import com.belljava.dto.Product;

public class ProductTestCase {
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private Product p;
	@BeforeClass
	public static void init() {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.belljava");
		context.refresh();
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	public void testCRUDProduct() {
		p=new Product();
		p.setName("nokia atom");
		p.setBrand("nokia");
		p.setDescription("super");
		p.setUnitPrice(3253432);
		p.setActive(true);
		p.setCategoryid(3);
		p.setSupplierEmail("sha");
		assertEquals("Something went wrong while insertitng a new product", true,productDAO.add(p));
		
		
		p=productDAO.get(2);
		p.setName("samsung n8");
		assertEquals("Something went wrong while update a new product", true,productDAO.update(p));
		
		assertEquals("Something went wrong while delete a new product", true,productDAO.delete(p));
		
		assertEquals("Something went wrong while fetch a new product", 1 ,productDAO.list().size());
		
	}
}
