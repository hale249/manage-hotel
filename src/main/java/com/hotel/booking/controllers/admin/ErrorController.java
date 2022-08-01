package com.hotel.booking.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class ErrorController {
    @GetMapping("/404")
    public String notFound() {
        return "admin/elements/errors/404";
    }

    @GetMapping("/403")
    public String notAccess() {
        return "admin/elements/errors/403";
    }
}
