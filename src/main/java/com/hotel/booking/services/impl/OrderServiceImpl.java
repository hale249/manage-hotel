package com.hotel.booking.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.booking.dto.BookingDto;
import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Room;
import com.hotel.booking.repositories.BookingRepository;
import com.hotel.booking.repositories.RoomRepository;
import com.hotel.booking.services.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	private RoomRepository roomRepository;

	@Override
	public List<BookingDto> getListOrderCustomer(Long customerId) {
		List<Booking> bookings = bookingRepository.findBookingByCustomerId(customerId, "0");
		List<BookingDto> bookingDtos = new ArrayList<BookingDto>();
		for (Booking booking : bookings) {
			Room room = roomRepository.getById(booking.getRoomId());
			BookingDto bookingDto = new BookingDto();
			BeanUtils.copyProperties(booking, bookingDto);
			bookingDto.setRoom(room);
			bookingDtos.add(bookingDto);
		}
		return bookingDtos;
	}

	@Override
	public List<BookingDto> getListOrderCustomerSuccess(Long customerId) {
		List<Booking> bookings = bookingRepository.findBookingByCustomerId(customerId, "1");
		List<BookingDto> bookingDtos = new ArrayList<BookingDto>();
		for (Booking booking : bookings) {
			Room room = roomRepository.getById(booking.getRoomId());
			BookingDto bookingDto = new BookingDto();
			BeanUtils.copyProperties(booking, bookingDto);
			bookingDto.setRoom(room);
			bookingDtos.add(bookingDto);
		}
		return bookingDtos;
	}

}
