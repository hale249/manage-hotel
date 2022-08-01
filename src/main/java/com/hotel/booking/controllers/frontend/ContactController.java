package com.hotel.booking.controllers.frontend;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.booking.entities.Contact;
import com.hotel.booking.services.impl.ContactServiceImpl;

@Controller
@RequestMapping("/contact")
public class ContactController {

    @Autowired
    private ContactServiceImpl contactService;

    @GetMapping
    public String contact(Model model) {
        model.addAttribute("contact",new Contact());
        return "atoli/elements/contact";
    }

    @PostMapping
    public String roomDetail(@Valid @ModelAttribute("contact") Contact request
            , BindingResult result,Model model) {
        if (result.hasErrors()) {
            model.addAttribute("contact", request);
            return "atoli/elements/contact";
        }
        try {
            contactService.create(request);
        }catch (Exception e){
            return "atoli/elements/contact";
        }

        return "redirect:/contact";
    }
}
