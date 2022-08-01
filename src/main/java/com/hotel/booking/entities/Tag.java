package com.hotel.booking.entities;

import com.hotel.booking.constants.DBConstants;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Where;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Where(clause="deleted=0")
@Table(name = DBConstants.Documents.TAG)
public class Tag  extends BaseEntity{
    @Column(name = "name", length = 255)
    private String name;

    @Column(name = "deleted", columnDefinition = "boolean default false")
    private boolean deleted = Boolean.FALSE;
}
