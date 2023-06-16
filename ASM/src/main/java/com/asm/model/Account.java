package com.asm.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "accounts")
public class Account {
	@Id
	
	String username;
	String password;
	String fullname;
	String email;
	@OneToMany(mappedBy = "account",fetch = FetchType.EAGER)
	List<Orders> ordersID;
	
	@Column(name = "activated", columnDefinition = "default 1")
	private Boolean activated;

	@Column(name = "admin", columnDefinition = "default 0")
	private Boolean admin;
}
