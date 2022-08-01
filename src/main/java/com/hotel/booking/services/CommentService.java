package com.hotel.booking.services;

import java.util.List;

import com.hotel.booking.entities.Comment;

public interface CommentService {
    List<Comment> listComments();

    Comment create(Comment comment);

    Comment findById(Long id);

    Comment update(Long id, Comment comment);

    void deleteById(Long commentId);

    Comment findCommentById(Long id);

    List<Comment> findCommentsById(Long id);
}
