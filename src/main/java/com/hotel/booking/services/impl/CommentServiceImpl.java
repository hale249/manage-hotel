package com.hotel.booking.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.booking.entities.Comment;
import com.hotel.booking.repositories.CommentRepository;
import com.hotel.booking.services.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepository commentRepository;

    @Override
    public List<Comment> listComments() {
        return commentRepository.findAll();
    }

    @Override
    public Comment create(Comment comment) {
        return commentRepository.save(comment);
    }

    @Override
    public Comment findById(Long id) {
        return null;
    }


    @Override
    public Comment update(Long id, Comment comment) {
        return null;
    }

    @Override
    public void deleteById(Long commentId) {

    }

    @Override
    public Comment findCommentById(Long id) {
    	return null;
    }

    @Override
    public List<Comment> findCommentsById(Long id) {
        return commentRepository.findAllByBlog_id(id);
    }

}
