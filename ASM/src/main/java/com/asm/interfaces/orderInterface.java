package com.asm.interfaces;

import java.sql.Date;
import java.time.LocalDateTime;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.asm.model.Orders;

import jakarta.transaction.Transactional;

public interface orderInterface extends JpaRepository<Orders, Integer> {
	@Modifying
	@Transactional
	@Query(value = "INSERT into orders (username,createdate) VALUES (?1,?2)", nativeQuery = true)
	 void addOrderUser(String user, LocalDateTime localDateTime);
}	
