package com.hotel.booking.services.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.hotel.booking.entities.Customer;
import com.hotel.booking.repositories.CustomerRepository;
import com.hotel.booking.services.CustomerService;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.utils.pagination.Paging;
import com.hotel.booking.validates.customer.CustomerRequest;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	@Override
	@Transactional
	public Paged<Customer> getCustomers(int current, int pageSize, String searchText) {
		PageRequest request = PageRequest.of(current - 1, pageSize, Sort.by(Sort.Direction.ASC, "id"));
		Page<Customer> customerResponse = customerRepository.getCustomers(searchText, request);
		return new Paged<>(customerResponse, Paging.of(customerResponse.getTotalPages(), current, pageSize));
	}

	@Override
	public Customer create(CustomerRequest customer) {
		Customer newCustomer = new Customer();
		newCustomer.setName(customer.getName());
		newCustomer.setEmail(customer.getEmail());
		newCustomer.setPhoneNumber(customer.getPhoneNumber());
		newCustomer.setAddress(customer.getAddress());
		newCustomer.setIdCard(customer.getIdCard());
		newCustomer.setTotalPrice(0.0);
		return customerRepository.save(newCustomer);
	}

	@Override
	public Customer findById(Long customerId) {
		return customerRepository.getById(customerId);
	}

	@Override
	public Customer findByEmail(String email) {
		return customerRepository.findByEmail(email);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}

	@Override
	public Customer create(Customer customer) {
		return customerRepository.save(customer);
	}

	@Override
	public Customer update(Long id, CustomerRequest customer) {
		Customer customerEdit = customerRepository.findById(id).orElse(null);
		if (customerEdit == null) {
			return null;
		}

		customerEdit.setEmail(customer.getEmail());
		customerEdit.setName(customer.getName());
		customerEdit.setPhoneNumber(customer.getPhoneNumber());
		customerEdit.setIdCard(customer.getIdCard());
		customerEdit.setAddress(customer.getAddress());

		return customerRepository.save(customerEdit);
	}

	@Override
	public void deleteById(Long customerId) {
		customerRepository.deleteById(customerId);
	}

	@Override
	public Customer loginCustomer(String username, String password) {
		List<Customer> customers = customerRepository.findByUsernamePass(username, password);
		if (customers.size() > 0) {
			return customers.get(0);
		}
		return null;
	}

	@Override
	public Customer updateFirst(Customer customer) {
		Customer customerEdit = customerRepository.findById(customer.getId()).orElse(null);
		if (customerEdit == null) {
			return null;
		}

		customerEdit.setEmail(customer.getEmail());
		customerEdit.setName(customer.getName());
		customerEdit.setPhoneNumber(customer.getPhoneNumber());
		customerEdit.setIdCard(customer.getIdCard());
		customerEdit.setAddress(customer.getAddress());
		customerEdit.setUsername(customer.getUsername());
		customerEdit.setPassword(customer.getPassword());
		
		return customerRepository.save(customerEdit);
	}
}
