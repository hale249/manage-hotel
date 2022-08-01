package com.hotel.booking.services;

import com.hotel.booking.entities.User;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.validates.user.CreateUserRequest;
import com.hotel.booking.validates.user.UpdateUserRequest;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService  extends UserDetailsService {
        User createUser(CreateUserRequest user);

        Paged<User> listUsers(int current, int pageSize, String searchText);

        void deleteUserById(Long userId);

        User findById(Long userId);

        User update(Long id, UpdateUserRequest user);
}