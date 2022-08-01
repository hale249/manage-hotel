package com.hotel.booking.services;

import java.util.Set;

import com.hotel.booking.entities.RoomDetail;

public interface RoomDetailService {
    RoomDetail create(RoomDetail room);

    RoomDetail findById(Long id);

    RoomDetail update(Long id, RoomDetail room);

    Set<RoomDetail> findRoomByRoomId(Long id);

    int updateDeleted(boolean deleted,Long id, String type);

    void deleteById(Long roomId);

    RoomDetail findRoomById(Long id);
}
