package com.asm.interfaces;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asm.model.OrderDetails;

public interface orderDetailsInterfacee extends JpaRepository<OrderDetails, Integer> {

}
