package com.asm.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.asm.constain.SessionService;
import com.asm.interfaces.ProductInterface;
import com.asm.model.Category;
import com.asm.model.Product;

import jakarta.mail.Multipart;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletContext;

@Controller
public class productController {
	@Autowired
	ProductInterface proDAO;
	@Autowired
	SessionService ss;

	@Autowired
	ServletContext app;

	@RequestMapping("/productManager")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {

		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = proDAO.findName(pageable);
		model.addAttribute("page", page);
		return "QuanliSP";
	}

	@RequestMapping("/Findproduct")
	public String find(Model model, @RequestParam("timkiem") Optional<String> name,		@RequestParam("p") Optional<Integer> p) {
		String keyword = name.orElse(ss.getAttribute("name"));
		ss.setAttribute("name", keyword);
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = proDAO.findByName(keyword, pageable);
		model.addAttribute("page", page);
		return "QuanliSP";
	}

	@RequestMapping("/iphone")
	public String iphonee(Model model) {
		model.addAttribute("product", proDAO.getProductByCate("DM01"));
		return "iphone";
	}

	@RequestMapping("/iphone14")
	public String iphone14(Model model) {
		model.addAttribute("product", proDAO.getProductByName("iphone 14"));
		return "iphone";
	}

	@RequestMapping("/iphone13")
	public String iphone13(Model model) {
		model.addAttribute("product", proDAO.getProductByName("iphone 13"));
		return "iphone";
	}

	@RequestMapping("/iphone12")
	public String iphone12(Model model) {
		model.addAttribute("product", proDAO.getProductByName("iphone 12"));
		return "iphone";
	}

	@RequestMapping("/iphone11")
	public String iphone11(Model model) {
		model.addAttribute("product", proDAO.getProductByName("iphone 11"));
		return "iphone";
	}

	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model, @ModelAttribute("product") Product product) {
		Product pro = proDAO.getById(id);			
		model.addAttribute("product", pro);
		return "updateProduct";

	}

	@RequestMapping("/update")
	public String update(Model model, @ModelAttribute("product") Product product) {			
		proDAO.save(product);		
		return "redirect:/productManager";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Integer id, Model model, @ModelAttribute("product") Product product, @RequestParam("p") Optional<Integer> p) {
	
		proDAO.deleteById(id);
		proDAO.save(product);
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = proDAO.findName(pageable);
		model.addAttribute("page", page);
		
		return "redirect:/productManager";
		
	}
	@RequestMapping("/sort")
	public String sort(Model model, @RequestParam("optionbox") String sortOption)
	{
		
		
		if (sortOption.equals("a-z")) {
			model.addAttribute("product" , proDAO.getAtoZ());
		}else if (sortOption.equals("z-a")) {
			model.addAttribute("product" , proDAO.getztoa());
		} else if (sortOption.equals("giacao")) {
			model.addAttribute("product" , proDAO.getgiacao());
		} else {
			model.addAttribute("product" , proDAO.getgiathap());
		}
	
		return "iphone";
		
	}

}
