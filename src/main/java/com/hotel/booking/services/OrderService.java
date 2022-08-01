package com.hotel.booking.services;

import java.util.List;

import com.hotel.booking.dto.BookingDto;

public interface OrderService {
	
	List<BookingDto> getListOrderCustomer(Long customerId);
	
	List<BookingDto> getListOrderCustomerSuccess(Long customerId);

}
