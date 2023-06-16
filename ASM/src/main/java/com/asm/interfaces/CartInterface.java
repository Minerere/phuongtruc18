package com.asm.interfaces;



import java.util.Collection;
import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.asm.model.Product;
@Service
public interface CartInterface  {
	Product add(Integer id);

	void remove(Integer id);

	Product update(Integer id, String sl);

	void clear();

	Collection<Product> getProduct();

	int getCount();

	double getAmout();
		
	Product getSanPham(Integer id);
	
}
