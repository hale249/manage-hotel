package com.hotel.booking.controllers.admin;

import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.booking.dto.StatisticalDto;
import com.hotel.booking.services.StatisticalService;

@Controller
@RequestMapping("/admin")
public class StatisticalController {

	@Autowired
	private StatisticalService statisticalService;

	@GetMapping("/statistical")
	public String init(Model model,
			@RequestParam(value = "dateStart", required = false, defaultValue = "") String dateStart,
			@RequestParam(value = "dateEnd", required = false, defaultValue = "") String dateEnd) {
		Date startDate = new Date();
		Calendar c = Calendar.getInstance();
		c.setTime(startDate);
		c.add(Calendar.MONTH, -1);
		StatisticalDto statisticalDto = statisticalService.getInfoStatistical();
		statisticalDto.setDateStart(c.getTime());
		statisticalDto.setDateEnd(startDate);
		model.addAttribute("statistical", statisticalDto);
		return "admin/elements/statistical/index";
	}
}
