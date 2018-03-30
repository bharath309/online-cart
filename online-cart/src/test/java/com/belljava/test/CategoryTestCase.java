package com.belljava.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.belljava.dao.CategoryDAO;
import com.belljava.dao.ProductDAO;
import com.belljava.dto.Category;
import com.belljava.dto.Product;

public class CategoryTestCase {
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	private Category p;
	@BeforeClass
	public static void init() {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.belljava");
		context.refresh();
		categoryDAO=(CategoryDAO) context.getBean("categoryDAO");
	}
	public void testCRUDProduct() {
		p=new Category();
		p.setName("Mobiles");	
		p.setDescription("super");		
		p.setActive(true);
		p.setImageURL("fsaf");
		assertEquals("Something went wrong while insertitng a new product", true,categoryDAO.add(p));
		
		
		p=categoryDAO.get(2);
		p.setName("Telivisions");
		assertEquals("Something went wrong while update a new product", true,categoryDAO.update(p));
		
		assertEquals("Something went wrong while delete a new product", true,categoryDAO.delete(p));
		
		assertEquals("Something went wrong while fetch a new product", 1 ,categoryDAO.list().size());
		
	}
}
