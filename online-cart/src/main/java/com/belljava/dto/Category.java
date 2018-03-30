package com.belljava.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import org.springframework.stereotype.Component;

@Entity 
public class Category {
	
	
	//private fields
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int categoryId;
	
	@Column(name="Department",nullable=false)
	private String name;
	@Column(name="Description")
	private String description;
	@Column(name="image_url", nullable=false)
	private String imageURL;
	@Column(name="is_Active")
	private boolean active = true;
	
	
	public Category(int categoryId, String name, String description, String imageURL, boolean active) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.description = description;
		this.imageURL = imageURL;
		this.active = active;
	}
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", name=" + name + ", description=" + description + ", imageURL="
				+ imageURL + ", active=" + active + "]";
	}

	
}
