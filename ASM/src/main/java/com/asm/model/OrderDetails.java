package com.asm.model;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "orderdetails")
public class OrderDetails {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	int id;
	double price;
	@Column(name = "quantity")
	int soluong;
	@ManyToOne
	@JoinColumn(name = "orderid")
	Orders orderid;
	
	@ManyToOne 
	@JoinColumn(name = "Productid")
	Product product;

	public OrderDetails(Double price, Integer quantity, Product product, Orders order) {
		super();
		this.price = price;
		this.soluong = quantity;
		this.product = product;
		this.orderid = order;
	}
}
