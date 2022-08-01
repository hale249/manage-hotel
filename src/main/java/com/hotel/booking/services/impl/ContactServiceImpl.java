package com.hotel.booking.services.impl;

import com.hotel.booking.entities.Contact;
import com.hotel.booking.repositories.ContactRepository;
import com.hotel.booking.services.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactServiceImpl implements ContactService {

    @Autowired
    private ContactRepository contactRepository;

    @Override
    public List<Contact> listComments() {
        return null;
    }

    @Override
    public Contact create(Contact contact) {
        return contactRepository.save(contact);
    }

    @Override
    public Contact findById(Long id) {
        return null;
    }

    @Override
    public Contact update(Long id, Contact contact) {
        return null;
    }

    @Override
    public void deleteById(Long commentId) {

    }

    @Override
    public Contact findCommentById(Long id) {
        return null;
    }

    @Override
    public List<Contact> findContactById(Long id) {
        return null;
    }
}

