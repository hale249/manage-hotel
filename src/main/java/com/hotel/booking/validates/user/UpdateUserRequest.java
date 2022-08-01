package com.hotel.booking.validates.user;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UpdateUserRequest {
    private String name;
    private String address;

    @NotEmpty(message = "Email không được trống")
    @Email(message = "Email không hợp lệ")
    private String email;
}
