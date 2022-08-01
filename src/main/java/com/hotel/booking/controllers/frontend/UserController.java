package com.hotel.booking.controllers.frontend;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.booking.entities.Customer;
import com.hotel.booking.services.CustomerService;

@Controller
public class UserController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("customer/login")
	public String login(Model model, HttpSession session) {
		model.addAttribute("customer", new Customer());
		return "/atoli/elements/login";
	}

	@GetMapping("customer/logout")
	public String logout(Model model, HttpSession session) {
		session.removeAttribute("customer");
		session.setAttribute("customer", null);
		return "/atoli/elements/login";
	}

	@PostMapping("customer/login")
	public String postLogin(Model model, RedirectAttributes redirectAttributes,
			@ModelAttribute("customer") Customer customer, HttpSession session) {
		Customer customer2 = customerService.loginCustomer(customer.getUsername(), customer.getPassword());
		if (customer2 != null) {
			session.setAttribute("customer", customer2);
			model.addAttribute("customer", customer2);
			return "redirect:/";
		}
		redirectAttributes.addFlashAttribute("error", "Username hoặc Password không tồn tại");
		return "redirect:/customer/login";
	}

	@PostMapping("customer/create")
	public String createCustomer(Model model, RedirectAttributes redirectAttributes,
			@ModelAttribute("customer") Customer customer, HttpSession session) {
		Customer customerExists = customerService.findByEmail(customer.getEmail());
		if (Objects.nonNull(customerExists)) {
			customer.setId(customerExists.getId());
			Customer customerUpdate = customerService.updateFirst(customer);
			session.removeAttribute("customer");
			session.setAttribute("customer", customerUpdate);
		}
		return "redirect:/customer/order";
	}
}
