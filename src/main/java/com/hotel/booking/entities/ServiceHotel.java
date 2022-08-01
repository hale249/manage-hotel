package com.hotel.booking.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Where;

import com.hotel.booking.constants.DBConstants;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Where(clause="deleted=0")
@Table(name = DBConstants.Documents.SERVICES)
public class ServiceHotel extends BaseEntity {
    @NotNull
    private String title;

    @Column(columnDefinition = "text")
    private String icon;

    @Column(name = "sort_description", columnDefinition = "text")
    private String sortDescription;

    @Column(columnDefinition = "text")
    private String image;

    @Column(columnDefinition = "text")
    private String content;

    @Column(name = "status", columnDefinition = "boolean default true")
    private boolean status;

    @Column(name = "deleted", columnDefinition = "boolean default false")
    private boolean deleted = Boolean.FALSE;
}
