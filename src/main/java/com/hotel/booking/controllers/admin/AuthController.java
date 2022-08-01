package com.hotel.booking.controllers.admin;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AuthController {
    @GetMapping("/admin/login")
    public String login(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

//        if (name !=null) {
//            return "redirect:/admin";
//        }

        return "/admin/elements/auth/login";
    }

    @GetMapping("/admin/logout")
    public String logout(Model model) {
        return "/admin/elements/auth/login";
    }

    @PostMapping("/admin/login")
    public String postLogin() {
    	
        return "/admin/elements/dashboard/index";
    }

}
