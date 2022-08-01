package com.hotel.booking.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.booking.entities.CommentRoom;
import com.hotel.booking.repositories.CommentRoomRepository;
import com.hotel.booking.services.CommentRoomService;
import com.hotel.booking.utils.pagination.Paged;

@Service
public class CommentRoomServiceImpl implements CommentRoomService {

    @Autowired
    private CommentRoomRepository commentRepository;

    @Override
    public Paged<CommentRoom> listComments(int current, int pageSize, String searchText) {
        return null;
    }

    @Override
    public CommentRoom create(CommentRoom comment) {
        return commentRepository.save(comment);
    }

    @Override
    public CommentRoom findById(Long id) {
        return null;
    }

    @Override
    public CommentRoom update(Long id, CommentRoom comment) {
        return null;
    }

    @Override
    public void deleteById(Long commentId) {

    }
	
    @Override
    public List<CommentRoom> getCommentByRoomId(Long id) {
        return commentRepository.findAllByBlog_id(id);
    }

    @Override
    public CommentRoom findCommentById(Long id) {
        return null;
    }
}
