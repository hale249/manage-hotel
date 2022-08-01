package com.hotel.booking.services.impl;

import com.hotel.booking.entities.Blog;
import com.hotel.booking.repositories.BlogRepository;
import com.hotel.booking.services.BlogService;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.utils.pagination.Paging;
import com.hotel.booking.validates.blog.BlogRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogRepository blogRepository;

    @Override
    public Paged<Blog> getBlogs(int current, int pageSize, String searchText) {
        PageRequest request = PageRequest.of(current - 1, pageSize, Sort.by(Sort.Direction.ASC, "id"));
        Page<Blog> blogPage = blogRepository.getBlogs(searchText, request);
        return new Paged<>(blogPage, Paging.of(blogPage.getTotalPages(), current, pageSize));
    }

    @Override
    public Blog create(Blog blog) {
        return blogRepository.save(blog);
    }

    @Override
    public Blog findById(Long id) {
        return blogRepository.findBlogById(id);
    }

    @Override
    public Blog update(Long id, BlogRequest request, String imageLink) {
        Blog blogEdit = blogRepository.findById(id).orElse(null);
        if (blogEdit == null) {
            return null;
        }

        blogEdit.setTitle(request.getTitle());
        blogEdit.setSubTitle(request.getSubTitle());
        blogEdit.setImage(imageLink);
        blogEdit.setDescription(request.getDescription());
        blogEdit.setStatus(request.isStatus());
        return blogRepository.save(blogEdit);
    }

    @Override
    public void deleteById(Long id) {
        blogRepository.deleteById(id);
    }
}
