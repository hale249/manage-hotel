package com.hotel.booking.validates.blog;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CreateBlogRequest {
    @NotEmpty(message = "Tiêu đề không được để trống")
    private String title;

    @NotEmpty(message = "Tiêu đề phụ không được để trống")
    private String subTitle;

    private boolean status;

    @NotNull(message = "Hình ảnh không được để trống")
    private MultipartFile image;

    @NotEmpty(message = "Mô tả không được để trống")
    private String description;
}
