package com.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.interfaces.orderDetailsInterfacee;
import com.asm.interfaces.orderInterface;
@Controller
public class orderController {
	@Autowired
	orderInterface orderdao;
	@Autowired
	orderDetailsInterfacee orderdetailsdao;
	@RequestMapping("/orderManager")	
	public String index(Model model) {
		model.addAttribute("order", orderdao.findAll());
		model.addAttribute("orders", orderdetailsdao.findAll());
		return "QuanliDonHang";
	}
	
	
}
