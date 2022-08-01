package com.hotel.booking.controllers.frontend;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.*;
import com.hotel.booking.services.impl.BlogServiceImpl;
import com.hotel.booking.services.impl.CommentServiceImpl;
import com.hotel.booking.services.impl.FileLocalStorageServiceImpl;
import com.hotel.booking.utils.pagination.Paged;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogServiceImpl blogService;

    @Value("${app.page.blog.size}")
    private Integer pageSizeServer;

    @Autowired
    private CommentServiceImpl commentService;

    @Autowired
    private FileLocalStorageServiceImpl fileLocalStorageService;

    @GetMapping(value = "")
    public String blog(@RequestParam(value = "current",
            required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current, @RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
                       @RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {
        pageSize = pageSizeServer;

        Paged<Blog> blogs = blogService.getBlogs(current,pageSize,searchText);

        List<Blog> blogList = blogs.getPage().getContent();

        for (Blog b : blogList){
            List<Comment> comments = commentService.findCommentsById(b.getId());
            b.setTotalComment(comments.size());
        }

        for (Blog blog : blogs.getPage()) {
            String url = (blog.getImage()).replaceAll("uploads/","/blogs/");
            url = fileLocalStorageService.buildUrl(url);
            blog.setImage(url);
        }
        model.addAttribute("blogAll",blogs.getPage().getContent());
        model.addAttribute("blogs", blogs);

        model.addAttribute("totalPages", blogs.getPage().getTotalPages());
        model.addAttribute("totalItems", blogs.getPage().getTotalElements());
        model.addAttribute("currentPage", current);
        model.addAttribute("roomPaged", blogs);

        return "atoli/elements/blog";
    }

    @GetMapping(value = "/{id}")
    public String blogDetail(@PathVariable Long id
            , Model model) {

        Blog blog = blogService.findById(id);

        String url = (blog.getImage()).replaceAll("uploads/","/blogs/");
        url = fileLocalStorageService.buildUrl(url);
        blog.setImage(url);
        List<Comment> comments = commentService.findCommentsById(id);
        System.out.println(comments);
        model.addAttribute("commentByBlog", comments);
        model.addAttribute("comment", new Comment());
        model.addAttribute("blogDetail", blog);
        model.addAttribute("comments",commentService.listComments());

        model.addAttribute("blogs", blogService.getBlogs(1, 3, ""));

        return "atoli/elements/blog-details";
    }
}
