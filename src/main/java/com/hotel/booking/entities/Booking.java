package com.hotel.booking.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Where;
import org.springframework.format.annotation.DateTimeFormat;

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
@Where(clause = "deleted=0 AND deleted_flg = 0")
@Table(name = DBConstants.Documents.BOOKING)
public class Booking extends BaseEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String name;

	@NotNull
	@Email
	private String email;

	@DateTimeFormat (pattern="yyyy-MM-dd")
	private Date dateCheckin;
	
	@DateTimeFormat (pattern="yyyy-MM-dd")
	private Date dateCheckout;

	private int numberOfPerson;

	private int numberOfRoom;

	private String roomType;

	private Long customerId;

	private Long roomId;

	private double price;

	private String status;

	private String payment;

	@Column(name = "deleted", columnDefinition = "boolean default false")
	private boolean deleted = Boolean.FALSE;
	
	@Column(name = "deleted_flg", columnDefinition = "boolean default false")
	private boolean deletedFlg = Boolean.FALSE;
}
