package com.hotel.booking.repositories;

import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.hotel.booking.entities.RoomDetail;

public interface RoomDetailRepository extends JpaRepository<RoomDetail, Long> {

    RoomDetail findRoomDetailById(Long id);


    @Modifying
    @Query(value = "select * from room_details r where r.room_id = ?1", nativeQuery = true)
    Set<RoomDetail> findRoomDetailByRoomId(Long id);

    void deleteRoomDetailById(Long id);


    @Modifying
    @Transactional
    @Query(value = "update room_details u " +
            "set u.deleted=?1 "+
            "where u.room_id = ?2 and u.room_type=?3", nativeQuery = true)
    int update(boolean deleted, Long id, String type);

}
	