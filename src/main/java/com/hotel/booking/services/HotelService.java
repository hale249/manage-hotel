package com.hotel.booking.services;

import com.hotel.booking.entities.ServiceHotel;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.validates.service.ServiceRequest;

public interface HotelService {
    Paged<ServiceHotel> getServices(int current, int pageSize, String searchText);

    Paged<ServiceHotel> getServices(int current, int pageSiz);

    ServiceHotel create(ServiceHotel service);

    ServiceHotel findById(Long id);

    ServiceHotel update(Long id, ServiceRequest service, String image);

    void deleteById(Long id);
}
