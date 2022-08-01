package com.hotel.booking.controllers.frontend;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.booking.dto.BookingDto;
import com.hotel.booking.entities.Customer;
import com.hotel.booking.services.impl.OrderServiceImpl;

@Controller
@RequestMapping("customer")
public class OrderController {

	@Autowired
	private OrderServiceImpl orderServiceImpl;

	@GetMapping(value = "/order")
	public String about(Model model, HttpSession session) {
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer != null && customer.getId() != null && customer.getUsername() != null
				&& customer.getPassword() != null) {
			List<BookingDto> bookingDtos = orderServiceImpl.getListOrderCustomer((long) 2);
			List<BookingDto> sucessBookingDtos = orderServiceImpl.getListOrderCustomerSuccess((long) 2);
			model.addAttribute("bookings", bookingDtos);
			model.addAttribute("sucessBookings", sucessBookingDtos);
			return "atoli/elements/order";
		}
		if (customer != null) {
			model.addAttribute("customer", customer);
			model.addAttribute("mess", "Bạn chưa có tài khoản đăng ký ngay với gmail bạn vừa đặt phòng");
			return "atoli/elements/create-customer";
		} else {
			model.addAttribute("customer", new Customer());
			return "redirect:/customer/login";
		}
	}
}
