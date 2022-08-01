package com.hotel.booking.validates.blog;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class BlogRequest {
    @NotEmpty(message = "Tiêu đề không được để trống")
    private String title;

    @NotEmpty(message = "Tiêu đề phụ không được để trống")
    private String subTitle;

    private MultipartFile image;

    private boolean status;

    private String description;
}
