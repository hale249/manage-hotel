package com.hotel.booking.services;

import java.util.Date;
import java.util.List;

import com.hotel.booking.entities.Room;
import com.hotel.booking.utils.pagination.Paged;

public interface RoomService {
    Paged<Room> listRooms(int current, int pageSize, String searchText);

    Room create(Room room);

    Room findById(Long id);

    Room update(Long id, Room room);

    List<Room> findRoomLimit(Long id);

    int updateDeleted(boolean deleted, Long id);

    void deleteById(Long roomId);

    Room findRoomById(Long id);

    List<Room> findAllRoom(String roomType, Date dateCheckIn, Date dateCheckOut);

    List<Room> checkRoom(Long roomid, Date dateCheckIn, Date dateCheckOut);

}
