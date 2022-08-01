package com.hotel.booking.dto;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MailParamDto {
    private String[] mailTo;
    private String[] ccList;
    private String[] bccList;

    private String subject;
    private String content;

    private String fileName;

    private boolean isHtml = true;
}
