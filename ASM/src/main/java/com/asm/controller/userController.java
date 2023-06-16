package com.asm.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.interfaces.UserInterfaces;
import com.asm.model.Account;
import com.asm.model.Category;
import com.asm.model.Product;

@Controller
public class userController {
	@Autowired
	UserInterfaces udao;
	
	
	
	@RequestMapping("/userManager")
	public String index(Model model) {
		model.addAttribute("user", udao.findAll());
		return "QuanliUser";
	}

	@RequestMapping("/edit-user/{id}")
	public String edit(@PathVariable("id") String id, Model model) {
		Account account = udao.findById(id).get();
		model.addAttribute("user", account);
		return "redirect:/userManager";

	}
	@RequestMapping("/remove-user/{id}")
	public String remove(@PathVariable("id") String id, Model model) {
		Account account = udao.findById(id).get();
		udao.deleteById(id);
			
		model.addAttribute("user", account);
		return "redirect:/userManager";

	}
	@RequestMapping("/update-user")
	public String save(Model model, @ModelAttribute("user") Account account) {
		if(account.getUsername() == null) {
			return "test";
		}else 
			udao.save(account);
		
		return "redirect:/userManager";
	}
	@ModelAttribute("admin")
	public Map<Boolean, String> admin() {
		Map<Boolean, String> map = new HashMap<Boolean, String>();
		map.put(true, "Có");
		map.put(false, "Không");
		return map;
	}
	@ModelAttribute("actvited")
	public Map<Boolean, String> actvited() {
		Map<Boolean, String> map = new HashMap<Boolean, String>();
		map.put(true, "Có");
		map.put(false, "Không");
		return map;
	}

}
