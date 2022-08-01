package com.hotel.booking.services;

import com.hotel.booking.dto.MailParamDto;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;

public interface EmailService {
    void sendMail(MailParamDto mailParamDto) throws MessagingException, UnsupportedEncodingException;
}
