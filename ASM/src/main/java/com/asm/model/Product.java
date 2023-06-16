package com.asm.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.asm.model.Category;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@Entity
@Table(name = "products")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	int id;
//	@Column(name = "available")
//	Boolean isDelete;
	@Temporal(TemporalType.DATE)
	@Column(name = "createdate")
	Date createDate = new Date();
	String image;
	String name;
	double price;
	@Column(name = "numberof")
	int Sl;
	@ManyToOne
	@JoinColumn(name = "categoryid" )
	Category category;
	@OneToOne(mappedBy = "product" , fetch=FetchType.EAGER)
	ImageDetails imageDetailsl;
	@OneToMany(mappedBy = "product")
	List<OrderDetails> orderDetails;
}
