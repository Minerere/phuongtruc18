package com.asm.interfaces;


import java.util.Collection;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.asm.model.Product;
import com.asm.model.categoryReport;
@Service
public interface ProductInterface extends JpaRepository<Product, Integer> {
	@Query(value = "Select * from products where categoryid =:categoryId", nativeQuery = true)
	List<Product> getProductByCate(@Param("categoryId") String categoryId);
	@Query("SELECT new categoryReport(o.category.name, sum(o.price), count(o)) from Product o group by o.category.name order by sum(o.price) desc")
	List<categoryReport> getInventoryByCategory();
	@Query("Select o from Product o where o.name like %?1%")
	Page<Product> findByName(String name, Pageable page);
	@Query("Select o from Product o where o.name like %?1%")
	List<Product> getProductByName(String string);
	
	@Query(value = "select * from products", nativeQuery = true)
	Page<Product> findName( Pageable page);
	
	@Query(value = "SELECT * FROM products ORDER BY name ASC", nativeQuery = true)
	List<Product> getAtoZ();
	
	@Query(value = "SELECT * FROM products ORDER BY name DESC", nativeQuery = true)
	List<Product> getztoa();
	
	@Query(value = "SELECT * FROM products ORDER BY price DESC", nativeQuery = true)
	List<Product> getgiacao();
	
	@Query(value = "SELECT * FROM products ORDER BY price ASC", nativeQuery = true)
	List<Product> getgiathap();
	
	
	@Query(value = "delete from products where id = ?1", nativeQuery = true)
	void delete(Integer id);
	
}
