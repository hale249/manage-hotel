package com.hotel.booking.validates.customer;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotEmpty;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CustomerRequest {
    @NotEmpty(message = "Tên không được để trống")
    private String name;

    @NotEmpty(message = "Email không được để trống")
    private String email;

    @NotEmpty(message = "Số điện thoại không được để trống")
    private String phoneNumber;

    private String idCard;

    private Double totalPrice;

    private String address;
}
