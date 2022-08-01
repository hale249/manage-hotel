package com.hotel.booking.services;

import java.util.List;

import com.hotel.booking.dto.BookingDto;
import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Customer;
import com.hotel.booking.utils.pagination.Paged;

public interface BookingService {
    Paged<BookingDto> listBookings(int current, int pageSize, String searchText) throws Exception ;

    Booking create(Booking booking);

    Booking findById(Long id);

    List<Booking> findByEmail(String email);

    int update(Long id, Booking booking);

    Booking updateBooking(Booking book);

    void deleteById(Long bookingId);
    
    Customer createBooking(Booking booking, Customer customer) throws Exception;
}
