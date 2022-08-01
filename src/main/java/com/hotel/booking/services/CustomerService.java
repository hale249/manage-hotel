package com.hotel.booking.services;

import com.hotel.booking.entities.Customer;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.validates.customer.CustomerRequest;

import java.util.List;

public interface CustomerService {
    Paged<Customer> getCustomers(int current, int pageSize, String searchText);

    Customer create(CustomerRequest customer);

    Customer findById(Long customerId);

    List<Customer> getAllCustomers();

    Customer update(Long id, CustomerRequest customer);

    Customer findByEmail(String email);

    Customer create(Customer customer);

    void deleteById(Long customerId);
    
    Customer loginCustomer( String username, String password);
    
    Customer updateFirst(Customer customer);
}
