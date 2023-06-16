package com.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.constain.SessionAttr;
import com.asm.interfaces.UserInterfaces;
import com.asm.model.EmailDetail;
import com.asm.model.Account;
import com.asm.service.EmailService;
import com.asm.service.EmailServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@ComponentScan("com.asm.interfaces")
@ComponentScan("com.asm.service")
public class LoginController {
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	private UserInterfaces udao;
	
	@Autowired
	HttpSession session;

	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/login-form")
	public String loginForm() {
		return "login-form";
	}
	
	@RequestMapping("/resetAndChange")
	public String resetAndChangeForm() {
		return "resetPassword";
	}

	@RequestMapping("/backLogin")
	public String backToLoginForm() {
		return "login-form";
	}
	
	@RequestMapping("/backHome")
	public String backToHomePage() {
		return "redirect:/trang-chu";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		session.removeAttribute(SessionAttr.CURRENT_USER);
		return "redirect:/trang-chu";
	}

	@RequestMapping("/login")
	public String login() {
		String username = request.getParameter("logusername");
		String pass = request.getParameter("logpass");

		Account user = udao.findAccount(username, pass);
		if (user == null) {
			request.setAttribute("noity", "Cannot find your account !!!");
			return "login-form";
		}else {
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			
		}
		return "redirect:/trang-chu";
	}
	
	@RequestMapping("/register")
	public String register() {
		
		String username = request.getParameter("regusername");
		String email = request.getParameter("regemail");
		String pass = request.getParameter("regpass");
		String fullName = request.getParameter("regname");

		Account user; 
		try {
			user = new Account();
			user.setUsername(username); 
			user.setEmail(email);
			user.setPassword(pass);
			user.setFullname(fullName);
			user.setAdmin(Boolean.FALSE);
			user.setActivated(Boolean.TRUE);
			udao.save(user);
		}catch(Exception e) {
			request.setAttribute("noity", "Cannot create new user or user already exist!!!");
			return "login-form";
		}
		session.setAttribute(SessionAttr.CURRENT_USER, user);
		request.setAttribute("noity", "Create successfully!!!");
		return "login-form";
	}
	
	@RequestMapping("/reset")
	public String resetPassword() {
		 String email = request.getParameter("resetemail");
		 
		 Account user = udao.findByEmail(email);
		 
		 if(user != null) {
			 String newPass = String.valueOf((Math.random()) * ((9999 - 1000) + 1) + 1000);
			 user.setPassword(newPass);
			 
			 EmailDetail emailDetails = new EmailDetail(email, newPass, "YOUR NEW PASSWORD", null);
			 System.out.println(emailService.sendSimpleMail(emailDetails));
			 if(emailService.sendSimpleMail(emailDetails).equals("Mail Sent Successfully...")) {
				 udao.save(user);
				 return "redirect:/trang-chu";
			 }else {
				 request.setAttribute("noity", "Cannot find your email");
				 return "resetPassword";
			 }
			 
		 }else {
			 request.setAttribute("noity", "Cannot find your email");
		 }
		 return "resetPassword";
	}
	
	@RequestMapping("/changePass")
	public String changePassword() {
		String pass = request.getParameter("password");
		String newPass = request.getParameter("NewPassword");

		Account currUser = (Account) session.getAttribute(SessionAttr.CURRENT_USER);

		if (currUser.getPassword().equals(pass)) {
			currUser.setPassword(newPass);
			String email = currUser.getEmail();
			Account updateUser = udao.findByEmail(email);
			
			if(updateUser  != null) {
				updateUser.setPassword(newPass);
				udao.save(updateUser);
				session.setAttribute(SessionAttr.CURRENT_USER, updateUser);
				request.setAttribute("msg", "Change success!!!");
			}else {
				request.setAttribute("msg", "Can not change password");
			}
		}else {
			request.setAttribute("msg", "Can not change password");
		}
		
		return "resetPassword";
		
	}
	
	
	
	
}
