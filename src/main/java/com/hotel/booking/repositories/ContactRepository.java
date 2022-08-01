package com.hotel.booking.repositories;

import com.hotel.booking.entities.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactRepository extends JpaRepository<Contact, Long> {


}
