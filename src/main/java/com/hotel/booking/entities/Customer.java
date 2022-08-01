package com.hotel.booking.entities;

import com.hotel.booking.constants.DBConstants;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Where;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Where(clause="deleted=0")
@Table(name = DBConstants.Documents.CUSTOMERS)
public class Customer extends BaseEntity{
	private static final long serialVersionUID = -303999242877464955L;

	@Column(name = "name", length = 128)
    private String name;

    @Column(name = "id_card")
    private String idCard;

    @NotNull
    @Column(length = 50, unique = true)
    private String email;

    @NotNull
    @Column(name = "phone_number", length = 30, unique = true)
    private String phoneNumber;

    @Column(name = "total_price", columnDefinition="Decimal(12,2) default 0")
    private double totalPrice;

    @Column(columnDefinition = "text")
    private String address;

    @Column(name = "deleted", columnDefinition = "boolean default false")
    private boolean deleted = Boolean.FALSE;
    
    private String password;

    @Column(length = 128)
    private String username;
}