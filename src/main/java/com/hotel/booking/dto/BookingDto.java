package com.hotel.booking.dto;

import java.util.Date;

import org.hibernate.annotations.Where;
import org.springframework.format.annotation.DateTimeFormat;

import com.hotel.booking.entities.Customer;
import com.hotel.booking.entities.Room;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Where(clause = "deleted=0")
public class BookingDto {
	private Long id;
	private String name;
	private String email;

	@DateTimeFormat (pattern="yyyy-MM-dd")
	private Date dateCheckin;
	
	@DateTimeFormat (pattern="yyyy-MM-dd")
	private Date dateCheckout;

	private int numberOfPerson;

	private int numberOfRoom;

	private String roomType;

	private Customer customer;

	private Room room;

	private double price;

	private String status;

	private String payment;
}
