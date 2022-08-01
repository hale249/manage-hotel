package com.hotel.booking.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StatisticalDto {
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateStart;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateEnd;
	private int countAllOrder;
	private int countSuccOrder;
	private int countFaildOrder;
	private int superiorRoom;
	private int basicRoom;
	private double revenue;
	private double revenueSuperiorRoom;
	private double revenueBasicRoom;
}
