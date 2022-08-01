package com.hotel.booking.repositories;

import com.hotel.booking.entities.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {

    @Modifying
    @Query("update Comment c set c.deleted=true where c.id = ?1")
    void deleteById(Long id);

    @Query(value = "select * from comments where blog_id=?1", nativeQuery = true)
    List<Comment> findAllByBlog_id(Long id);
}