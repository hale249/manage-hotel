package com.hotel.booking.validates.user;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CreateUserRequest {
	private String name;
	private String address;
	private Date birthday;

	@NotEmpty(message = "Tên tài khoản không được trống")
	private String username;

	@NotEmpty(message = "Email không được trống")
	@Email(message = "Email không đúng định dạng")
	private String email;

	@NotEmpty(message = "Mật khẩu không được trống")
	private String password;
}
