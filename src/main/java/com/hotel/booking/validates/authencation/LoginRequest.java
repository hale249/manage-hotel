package com.hotel.booking.validates.authencation;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotEmpty;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class LoginRequest {
    @NotEmpty(message = "Tên tài khoản không được trống")
    private String username;

    @NotEmpty(message = "Mật khẩu không được để trống")
    private String password;
}
