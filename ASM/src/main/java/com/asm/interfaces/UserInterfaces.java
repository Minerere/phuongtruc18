package com.asm.interfaces;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.asm.model.Account;
import com.asm.model.Orders;

public interface UserInterfaces extends JpaRepository<Account, String> {
	@Query("SELECT u FROM Account u WHERE u.username = ?1 AND u.password = ?2")
	public Account findAccount(String username, String password);
	
	@Query("SELECT u FROM Account u WHERE u.email = ?1")
	public Account findByEmail(String email);
	
	@Query("SELECT u FROM Account u WHERE u.fullname = ?1")
	public Account findByFullname(String fullName);
	
	

	@Query("SELECT u FROM Account u WHERE u.username = ?1")
	public Account findByUsername(String id);
	

}
