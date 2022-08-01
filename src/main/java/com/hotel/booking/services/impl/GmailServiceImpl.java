package com.hotel.booking.services.impl;

import com.hotel.booking.configs.MailProperties;
import com.hotel.booking.dto.MailParamDto;
import com.hotel.booking.services.EmailService;
import org.apache.commons.lang3.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;


@Service
public class GmailServiceImpl implements EmailService {

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private MailProperties mailProperties;

    @Value("${app.file.location}")
    String fileLocation;

    @Override
    public void sendMail(MailParamDto mailParamDto) throws MessagingException, UnsupportedEncodingException {
        MimeMessage mimeMessage = javaMailSender.createMimeMessage();
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

        mimeMessageHelper.setFrom(mailProperties.getSenderEmail()
                , mailProperties.getSenderName());

        mimeMessageHelper.setTo(mailParamDto.getMailTo());
        mimeMessageHelper.setSubject(mailParamDto.getSubject());
        mimeMessage.setContent(mailParamDto.getContent(), "text/html; charset=UTF-8");

        FileSystemResource resource = null;
        if (mailParamDto.getFileName() != null) {
            resource = new FileSystemResource(
                    fileLocation + mailParamDto.getFileName());
        }

        if (resource != null) {
            mimeMessageHelper.addAttachment(getFileName(mailParamDto.getFileName()), resource);
        }

//        TODO: check cc and bcc is empty
        if (ArrayUtils.isNotEmpty(mailParamDto.getCcList())) {
            mimeMessageHelper.setCc(mailParamDto.getCcList());
        }

        if (ArrayUtils.isNotEmpty(mailParamDto.getBccList())) {
            mimeMessageHelper.setBcc(mailParamDto.getBccList());
        }

        javaMailSender.send(mimeMessage);
    }

    private String getFileName(String fileLocation) {
        return fileLocation.substring(fileLocation.indexOf("/"));
    }
}
