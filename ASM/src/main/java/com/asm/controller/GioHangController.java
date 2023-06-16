package com.asm.controller;

import java.util.Date;
import java.util.Iterator;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigurationPackage;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.constain.SessionAttr;
import com.asm.dao.UserDAO;
import com.asm.interfaces.CartInterface;
import com.asm.interfaces.ProductInterface;
import com.asm.interfaces.UserInterfaces;
import com.asm.interfaces.orderDetailsInterfacee;
import com.asm.interfaces.orderInterface;
import com.asm.model.Account;
import com.asm.model.OrderDetails;
import com.asm.model.Orders;
import com.asm.model.Product;

import jakarta.servlet.http.HttpSession;
@Controller
@ComponentScan("com.asm.dao")
public class GioHangController {
	@Autowired
	CartInterface cart;
	
	@Autowired
	HttpSession session;
	@Autowired
	orderInterface orderdao;
	
	@Autowired
		ProductInterface prodao;
	@Autowired 
	orderDetailsInterfacee orderdetailsdao;
	@RequestMapping("thanh-toan")
	public String cart(Model model) {
		model.addAttribute("cart", cart);
		return "cart";
	}

	@RequestMapping("add/iphone-{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/thanh-toan";
	}

	@RequestMapping("/remove/iphone-{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/thanh-toan";
	}

	@RequestMapping("update/iphone-{id}/{pre}")
	public String update(@PathVariable("id") Integer id, @PathVariable("pre") String pre) {
		cart.update(id, pre);
		return "redirect:/thanh-toan";
	}

	@RequestMapping("clear")
	public String clear() {
		cart.clear();
		return "redirect:/thanh-toan";
	}
	@RequestMapping("/confirmOder")
	public String oder(Model model, @ModelAttribute("order") Orders orders) {
		List<Product> products = new ArrayList<Product>();
		try {
			Account acc = (Account) session.getAttribute(SessionAttr.CURRENT_USER);				
			OrderDetails ordersdetails = new OrderDetails();
			orders.setAccount(acc);
			orders.setCreateDate(new Date());
			orderdao.save(orders);				
			for(Product item : cart.getProduct()) {
				Orders o = orderdao.getById(orders.getId());
				Product product = prodao.getById(item.getId());
				orderdetailsdao.save(new OrderDetails(item.getPrice(), item.getSl(), product, o));
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}		
		model.addAttribute("cartItems", cart.getProduct());	
		model.addAttribute("order",orders );
		return "orderdetails";
	}
	
	@RequestMapping("/confirmSuccess")
	public String confirmSuccess(Model model) {
		cart.clear();
		return "confirmSuccess";
	}
}
