package com.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.constain.SessionAttr;
import com.asm.model.Account;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("/admin")
	public String admin() {
		Account currUser = (Account) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currUser == null) {
			request.setAttribute("message", "Please Login");
			return "login-form";
		}else if (currUser.getAdmin() == false) {
			request.setAttribute("message", "You dont have permission here");
			return "noity";
		}
		return "admin";
	}

}
