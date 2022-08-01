package com.hotel.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.hotel.booking.entities.CommentRoom;

public interface CommentRoomRepository extends JpaRepository<CommentRoom, Long> {
    @Modifying
    @Query("update CommentRoom c set c.deleted=true where c.id = ?1")
    void deleteById(Long id);

    @Query(value = "select * from comment_room where reply_id=?1", nativeQuery = true)
    List<CommentRoom> findAllByBlog_id(Long id);
}
	