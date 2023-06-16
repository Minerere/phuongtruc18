package com.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.interfaces.Categoryinterfaces;
import com.asm.interfaces.ProductInterface;

@Controller
public class categoryControllr {
	@Autowired
	ProductInterface cadao;
	@RequestMapping("/categoryManager")	
	public String index(Model model) {
		model.addAttribute("product", cadao.getInventoryByCategory());
		return "QuanliCategory";
	}
	
}
