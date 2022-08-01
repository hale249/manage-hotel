package com.hotel.booking.services.impl;

import com.hotel.booking.entities.Room;
import com.hotel.booking.repositories.RoomRepository;
import com.hotel.booking.services.RoomService;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.utils.pagination.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	private RoomRepository roomRepository;

	@Override
	public Paged<Room> listRooms(int current, int pageSize, String searchText) {
		PageRequest request = PageRequest.of(current - 1, pageSize, Sort.by(Sort.Direction.ASC, "id"));
		Page<Room> roomPage = roomRepository.listRooms(searchText, request);
		return new Paged<>(roomPage, Paging.of(roomPage.getTotalPages(), current, pageSize));
	}

	@Override
	public Room create(Room room) {
		return roomRepository.save(room);
	}

	@Override
	public Room findById(Long roomId) {
		return roomRepository.getById(roomId);
	}

	@Override
	public Room update(Long id, Room room) {
		Room roomEdit = roomRepository.findById(id).orElse(null);
		if (roomEdit == null) {
			return null;
		}

		return roomRepository.save(roomEdit);
	}

	@Override
	public List<Room> findRoomLimit(Long id) {
		return roomRepository.findRoomLimit(id);
	}

	@Override
	public int updateDeleted(boolean deleted, Long id) {
		return roomRepository.update(deleted, id);
	}

	@Override
	public void deleteById(Long id) {
		roomRepository.deleteById(id);
	}

	@Override
	public Room findRoomById(Long id) {
		return roomRepository.findRoomById(id);
	}

	@Override
	public List<Room> findAllRoom(String roomType, Date dateCheckIn, Date dateCheckOut) {
		return roomRepository.findAllRoom(roomType, dateCheckIn, dateCheckOut);
	}

	@Override
	public List<Room> checkRoom(Long roomid, Date dateCheckIn, Date dateCheckOut) {
		return roomRepository.findRoomByRoomId(roomid, new SimpleDateFormat("yyyy-MM-dd").format(dateCheckIn),
				new SimpleDateFormat("yyyy-MM-dd").format(dateCheckOut));
	}
}
