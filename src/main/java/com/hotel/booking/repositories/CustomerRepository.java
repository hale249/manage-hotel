package com.hotel.booking.repositories;

import com.hotel.booking.entities.Customer;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {
	@Query("SELECT c FROM Customer c WHERE c.name LIKE %?1%" + " OR c.phoneNumber LIKE %?1%" + " OR  c.email LIKE %?1%")
	Page<Customer> getCustomers(String searchText, Pageable pageable);

	@Modifying
	@Query("update Customer c set c.deleted=true where c.id = ?1")
	void deleteById(Long id);

	Customer findByEmail(String email);

	@Query(value = "select * from customers where username= :username and password= :password", nativeQuery = true)
	List<Customer> findByUsernamePass(String username, String password);
}
