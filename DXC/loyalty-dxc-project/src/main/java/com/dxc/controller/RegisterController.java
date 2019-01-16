package com.dxc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.dxc.entity.Account;
import com.dxc.repository.AccountRepository;

@Controller
@SessionAttributes("account")
public class RegisterController {
	@Autowired
	private AccountRepository accountRepository;
	Account account = new Account();

	@RequestMapping(value = "/createaccount", method = RequestMethod.GET)
	public String showPageLogin() {
		return "home-register-guest";
	}
	@RequestMapping(value = "/createaccount/save", method = RequestMethod.POST)
	public String save(@Valid Account account) throws Exception{
		accountRepository.save(account);
		return "redirect:/createaccount";
	}
	}