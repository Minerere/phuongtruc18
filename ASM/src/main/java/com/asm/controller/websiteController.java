package com.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class websiteController {
	@RequestMapping("/webManager")
	public String index() {
		return "QuanliWeb";
	}
}
