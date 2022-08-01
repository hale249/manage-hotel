package com.hotel.booking.entities;

import com.hotel.booking.constants.DBConstants;
import lombok.*;
import org.hibernate.annotations.Where;

import javax.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@ToString
@Where(clause="deleted=0")
@Table(name = DBConstants.Documents.ROOMDETAILS)
public class RoomDetail extends BaseEntity{

    private double price;

    private String roomType;

    @Column(name = "deleted", columnDefinition = "boolean default false")
    private boolean deleted = Boolean.FALSE;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "room_id", nullable = false)
    private Room room;

}
