package com.hotel.booking.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Where;

import com.hotel.booking.constants.DBConstants;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@ToString
@Where(clause = "deleted=0")
@Table(name = DBConstants.Documents.ROOMS)
public class Room extends BaseEntity {
	private static final long serialVersionUID = 1L;

	@NotNull
	@Column(name = "name")
	private String name;

	@Column(columnDefinition = "text")
	private String image;

	private String unit;

	private double price;

	private int numberAmount;

	private String roomSize;

	private String location;

	private String bedSize;

	@Column(columnDefinition = "text")
	private String description;

	@OneToMany(mappedBy = "room", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<RoomTags> roomTag;

	@OneToMany(mappedBy = "room", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<RoomImages> roomImages;

	@OneToMany(mappedBy = "room", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<RoomDetail> roomDetails;

	@Column(name = "deleted", columnDefinition = "boolean default false")
	private boolean deleted = Boolean.FALSE;
	
	private String roomType;
	
	@Column(columnDefinition = "text")
	private String subDescription;

}
