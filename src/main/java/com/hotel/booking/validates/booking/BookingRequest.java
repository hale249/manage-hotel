package com.hotel.booking.validates.booking;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class BookingRequest {
    private String name;

    @NotBlank(message = "Email không được trống")
    @Email
    private String email;

    private Date dateCheckin;

    private Date dateCheckout;

    private int numberOfPerson;
	
    private int numberOfRoom;

    private String roomType;

    private Long customerId;

    private Long roomId;
    
    private String error;
}
