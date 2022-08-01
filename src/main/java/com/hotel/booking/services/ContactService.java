package com.hotel.booking.services;


import java.util.List;

import com.hotel.booking.entities.Contact;

public interface ContactService {
    List<Contact> listComments();

    Contact create(Contact contact);

    Contact findById(Long id);

    Contact update(Long id, Contact contact);

    void deleteById(Long commentId);

    Contact findCommentById(Long id);

    List<Contact> findContactById(Long id);
}
