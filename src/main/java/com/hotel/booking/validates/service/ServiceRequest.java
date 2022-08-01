package com.hotel.booking.validates.service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotEmpty;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ServiceRequest {
    @NotEmpty(message = "Tiêu đề không được để trống")
    private String title;

    @NotEmpty(message = "Icon không được để trống")
    private String icon;

    @NotEmpty(message = "Tiêu đề phụ không được để trống")
    private String sortDescription;

    private MultipartFile image;

    @NotEmpty(message = "Nội dung không được để trống")
    private String content;

    private boolean status;
}
