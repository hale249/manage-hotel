package com.hotel.booking.validates.room;

import java.util.List;
import java.util.Set;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import com.hotel.booking.entities.RoomDetail;
import com.hotel.booking.entities.RoomImages;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class RoomRequest {

    private Long id;
    private String title;
    private double price;
    private String unit;
    private MultipartFile image;
    private Resource imageResource;
    private List<MultipartFile> imageSlider;
    private String typeRoom;

    private String description;

    private int numberAmount;

    private int roomSize;

    private String location;

    private String bedSize;

    private Set<RoomImages> roomImages;

    private Set<RoomDetail> roomDetails;
    
	private String subDescription;

    @Override
    public String toString() {
        return "RoomRequest{" +
                "title='" + title + '\'' +
                ", price=" + price +
                ", unit='" + unit + '\'' +
                ", image='" + image + '\'' +
                ", imageSlider='" + imageSlider + '\'' +
                ", tags='" + typeRoom + '\'' +
                ", description='" + description + '\'' +
                ", subDescription='" + subDescription + '\'' +
                '}';
    }
}
