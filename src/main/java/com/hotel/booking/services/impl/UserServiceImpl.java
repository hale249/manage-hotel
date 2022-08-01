package com.hotel.booking.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.hotel.booking.entities.User;
import com.hotel.booking.repositories.UserRepository;
import com.hotel.booking.services.MyUserDetails;
import com.hotel.booking.services.UserService;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.utils.pagination.Paging;
import com.hotel.booking.validates.user.CreateUserRequest;
import com.hotel.booking.validates.user.UpdateUserRequest;

@Service
public class UserServiceImpl implements UserService, UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    @Override
    public User createUser(CreateUserRequest user) {
        User newUser = new User();
        newUser.setEnabled(true);
        newUser.setName(user.getName());
        newUser.setEmail(user.getEmail());
        newUser.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        newUser.setUsername(user.getUsername());
        newUser.setAddress(user.getAddress());
        newUser.setBirthday(user.getBirthday());
        return userRepository.save(newUser);
    }

    @Override
    public Paged<User> listUsers(int current, int pageSize, String searchText) {
        PageRequest request = PageRequest.of(current - 1, pageSize, Sort.by(Sort.Direction.ASC, "id"));
        Page<User> userPage = userRepository.listUsers(searchText, request);
        return new Paged<>(userPage, Paging.of(userPage.getTotalPages(), current, pageSize));
    }

    public List<User> findAll(){
        return userRepository.findAll();
    }

    public User findById(Long userId) {
        return userRepository.getById(userId);
    }

    public User update(Long id, UpdateUserRequest user) {
        User userEdit = userRepository.findById(id).orElse(null);
        if (userEdit == null) {
            return null;
        }

        userEdit.setEmail(user.getEmail());
        userEdit.setName(user.getName());
        userEdit.setAddress(user.getAddress());
        return userRepository.save(userEdit);
    }

    @Override
    public void deleteUserById(Long userId) {
        userRepository.deleteById(userId);
    }

    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
        User user = userRepository.getUserByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("Could not find user");
        }

        return new MyUserDetails(user);
    }
}
