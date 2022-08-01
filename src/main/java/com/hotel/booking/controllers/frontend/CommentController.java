package com.hotel.booking.controllers.frontend;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.booking.entities.Blog;
import com.hotel.booking.entities.Comment;
import com.hotel.booking.services.impl.BlogServiceImpl;
import com.hotel.booking.services.impl.CommentServiceImpl;

@Controller

@RequestMapping("/blog/comments")
public class CommentController {

    @Autowired
    private CommentServiceImpl commentService;

    @Autowired
    private BlogServiceImpl blogService;

    @PostMapping
    public String insertComment(Model model
            , @Valid @ModelAttribute("comment") Comment request, BindingResult result){

        if (result.hasErrors()) {
            Blog blog = blogService.findById(request.getBlog_id());
            model.addAttribute("blogDetail", blog);
            model.addAttribute("comment", request);
            return "atoli/elements/blog-details";
        }else {
            commentService.create(request);
        }

        model.addAttribute("comment", request);

        return "redirect:/blog/"+request.getBlog_id();
    }
}
