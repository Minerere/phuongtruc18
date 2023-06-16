package com.asm.dao;

import java.util.List;

import org.apache.catalina.authenticator.SpnegoAuthenticator.AcceptAction;
import org.springframework.beans.factory.annotation.Autowired;

import com.asm.constain.SessionAttr;
import com.asm.interfaces.UserInterfaces;
import com.asm.model.Account;

import jakarta.servlet.http.HttpSession;

public class UserDAO {
	@Autowired
	private UserInterfaces udao;


	
}
