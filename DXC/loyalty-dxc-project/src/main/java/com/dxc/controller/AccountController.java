package com.dxc.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dxc.entity.Account;
import com.dxc.repository.AccountRepository;


@Controller
public class AccountController {
	@Autowired
	private AccountRepository accountRepository;

	@GetMapping("/customer")
	public String index(Model model) {
		model.addAttribute("account",accountRepository.findAll());
		return "customer-manage";
	}
// Function DELETE
	@RequestMapping(value = "/customer/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		Account result = accountRepository.findByAccountid(id);
		if (result == null) {
			return "The id not exist";
		}
		accountRepository.delete(result);
		return "redirect:/customer";
	}
	//FUNCTION ADD
	@RequestMapping(value = "/customer/save", method = RequestMethod.POST)
	public String save(@Valid Account account) throws Exception{
		accountRepository.save(account);
		return "redirect:/customer";
	}
	//FUNCTION EDIT
	@RequestMapping(value = "/customer/update", method = RequestMethod.POST)
	public String update(@Valid Account account) throws IOException{
		accountRepository.updateAccount(account.getAccountid(), account.getName(), account.getAddress(),
				account.getEmail(), account.getCellphone(), account.getPoint(), 
				account.getUsername(), account.getPassword(), account.getCheckadmin());
		
		return "redirect:/customer";
	}

}