package com.dxc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dxc.entity.Account;
import com.dxc.repository.AccountRepository;

@Controller
public class LoginController {
	@Autowired
	private AccountRepository accountRepository;
	Account account = new Account();

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showPageLogin() {
		return "login-guest";
	}

	@RequestMapping(value = "/login/checkLogin", method = RequestMethod.GET)
	public String getLogin(Model model, @RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password,HttpSession http) {
		List<Account> listAccount = accountRepository.findAll();
		for (Account account : listAccount) {
			if (username.equals(account.getUsername()) && password.equals(account.getPassword()) && account.getCheckadmin()==0){
				
			http.setAttribute("account", account);
				return "redirect:/product";
				
			}
				
			else
				return "redirect:/login";
		}
		return "login-guest";
	}
}