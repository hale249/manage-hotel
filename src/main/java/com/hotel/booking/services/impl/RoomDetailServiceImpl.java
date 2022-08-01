package com.hotel.booking.services.impl;

import com.hotel.booking.entities.RoomDetail;
import com.hotel.booking.repositories.RoomDetailRepository;
import com.hotel.booking.services.RoomDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class RoomDetailServiceImpl implements RoomDetailService {


    @Autowired
    private RoomDetailRepository roomDetailRepository;
    @Override
    public RoomDetail create(RoomDetail room) {
        return roomDetailRepository.save(room);
    }

    @Override
    public RoomDetail findById(Long id) {
        return roomDetailRepository.findRoomDetailById(id);
    }

    @Override
    public RoomDetail update(Long id, RoomDetail room) {
        return roomDetailRepository.save(room);
    }

    @Override
    public int updateDeleted(boolean deleted, Long id, String type) {
        return roomDetailRepository.update(deleted, id, type);
    }

    @Override
    public void deleteById(Long roomId) {
        roomDetailRepository.deleteRoomDetailById(roomId);
    }	

    @Override
    public RoomDetail findRoomById(Long id) {
        return roomDetailRepository.findRoomDetailById(id);
    }

    @Override
    public Set<RoomDetail> findRoomByRoomId(Long id) {
        return roomDetailRepository.findRoomDetailByRoomId(id);
    }
}
