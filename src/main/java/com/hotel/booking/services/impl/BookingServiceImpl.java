package com.hotel.booking.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.booking.dto.BookingDto;
import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Customer;
import com.hotel.booking.entities.Room;
import com.hotel.booking.repositories.BookingRepository;
import com.hotel.booking.repositories.CustomerRepository;
import com.hotel.booking.repositories.RoomRepository;
import com.hotel.booking.services.BookingService;
import com.hotel.booking.services.CustomerService;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.utils.pagination.Paging;

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	private BookingRepository bookingRepository;

	@Autowired
	protected CustomerService customerService;

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private RoomRepository roomRepository;

	@Override
	@Transactional(rollbackFor = { Exception.class, Throwable.class })
	public Paged<BookingDto> listBookings(int current, int pageSize, String searchText) throws Exception {
		PageRequest request = PageRequest.of(current - 1, pageSize, Sort.by(Sort.Direction.DESC, "updatedAt"));
		Page<Booking> bookings = bookingRepository.getBooking(searchText, request);
		List<BookingDto> bookingDtoList = new ArrayList<BookingDto>();
		for (Booking booking : bookings.getContent()) {
			BookingDto bookingDto = new BookingDto();
			BeanUtils.copyProperties(booking, bookingDto);
			try {
				Customer customer = customerRepository.getById(booking.getCustomerId());
				bookingDto.setCustomer(customer);
			} catch (Exception e) {
				bookingDto.setCustomer(null);
			}
			try {
				Room room = roomRepository.getById(booking.getRoomId());
				bookingDto.setRoom(room);
				bookingDto.setRoomType(room.getRoomType());
			} catch (Exception e) {
				bookingDto.setRoom(null);
			}
			bookingDtoList.add(bookingDto);
		}
		Page<BookingDto> pageBooking = new PageImpl<>(bookingDtoList);
		return new Paged<>(pageBooking, Paging.of(bookings.getTotalPages(), current, pageSize));
	}

	@Override
	public Booking create(Booking booking) {
		return bookingRepository.save(booking);
	}

	@Override
	public Booking findById(Long id) {
		Booking booking = bookingRepository.getById(id);
		return booking;
	}

	@Override
	public List<Booking> findByEmail(String email) {
		return bookingRepository.findBookingByEmail(email);
	}

	@Override
	public int update(Long id, Booking request) {
		return bookingRepository.update(request.getName(), request.getEmail(), request.getDateCheckin(),
				request.getDateCheckout(), request.getNumberOfPerson(), request.getNumberOfRoom(),
				request.getRoomType(), request.getRoomId(), request.isDeleted(), request.getPrice(),
				request.getPayment(), request.getStatus(), request.getId());
	}

	@Override
	public Booking updateBooking(Booking book) {
		return bookingRepository.save(book);
	}

	@Override
	public void deleteById(Long id) {
		bookingRepository.deleteById(id);
	}

	@Override
	@Transactional(rollbackFor = { Exception.class, Throwable.class })
	public Customer createBooking(Booking booking, Customer customer) throws Exception {
			Customer customer2 = customerService.create(customer);
			booking.setCustomerId(customer2.getId());
			bookingRepository.save(booking);
			return customer2;
	}

}
