package com.hotel.booking.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.booking.dto.StatisticalDto;
import com.hotel.booking.entities.Booking;
import com.hotel.booking.repositories.BookingRepository;
import com.hotel.booking.services.StatisticalService;

@Service
public class StatisticalServiceImpl implements StatisticalService{
	
	@Autowired
	BookingRepository bookingRepository; 

	@Override
	public StatisticalDto getInfoStatistical() {
		StatisticalDto statisticalDto = new StatisticalDto();
		statisticalDto.setCountAllOrder(bookingRepository.countBooking());
		statisticalDto.setCountFaildOrder(bookingRepository.countFailBooking());
		statisticalDto.setCountSuccOrder(bookingRepository.countSuccBooking());
		List<Booking> bookings = bookingRepository.bookingsSuccess();
		double price = 0;
		for(Booking booking: bookings) {
			price = price + booking.getPrice();
		}
		statisticalDto.setRevenue(price);
		statisticalDto.setSuperiorRoom(bookingRepository.countBookingRoomType("Cao cấp"));
		statisticalDto.setBasicRoom(bookingRepository.countBookingRoomType("Cơ bản"));
		List<Booking> bookingsBasic = bookingRepository.bookingsSuccess("Cơ bản");
		double priceBasic = 0;
		for(Booking booking: bookingsBasic) {
			priceBasic = priceBasic + booking.getPrice();
		}
		statisticalDto.setRevenueBasicRoom(priceBasic);
		List<Booking> bookingsSuperior= bookingRepository.bookingsSuccess("Cao cấp");
		double priceSuperior = 0;
		for(Booking booking: bookingsSuperior) {
			priceSuperior = priceSuperior + booking.getPrice();
		}
		statisticalDto.setRevenueSuperiorRoom(priceSuperior);
		return statisticalDto;
	}

}
