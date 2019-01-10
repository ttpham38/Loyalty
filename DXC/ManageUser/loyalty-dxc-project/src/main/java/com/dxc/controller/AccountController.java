package com.dxc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dxc.entity.Account;
import com.dxc.repository.AccountRepository;

@Controller
public class AccountController {
	@Autowired
	private AccountRepository accountRepository;

	@GetMapping("/Account")
	public String index(Model model) {
		model.addAttribute("account",accountRepository.findAll());
		return "customer-manage";
	}

	
	 @GetMapping("/Account/{id}edit")
	 
	public String edit(@PathVariable int id, Model model) {
		model.addAttribute("account", accountRepository.findAll());
				
		return "customer-manage";
	}

	@PostMapping("/Account/save")
	public String save(@Valid Account account, BindingResult result, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			return "customer-manage";
		}
		accountRepository.save(account);
		redirect.addFlashAttribute("success", "Saved account successfully!");
		return "redirect:/Account";
	}

	@GetMapping("/Account/{id}")
	public String delete(@PathVariable Account id, RedirectAttributes redirect) {
		accountRepository.delete(id);
		redirect.addFlashAttribute("success", "Deleted account successfully!");
		return "redirect:/Account";
	}


}
