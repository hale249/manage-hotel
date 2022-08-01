package com.hotel.booking.controllers.frontend;

import java.util.LinkedHashSet;
import java.util.Random;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.Room;
import com.hotel.booking.entities.RoomImages;
import com.hotel.booking.entities.ServiceHotel;
import com.hotel.booking.services.impl.FileLocalStorageServiceImpl;
import com.hotel.booking.services.impl.HotelServiceImpl;
import com.hotel.booking.services.impl.RoomServiceImpl;
import com.hotel.booking.utils.pagination.Paged;

@Controller
@RequestMapping("/services")
public class ServiceController {

	@Autowired
	private HotelServiceImpl hotelService;

	@Autowired
	private FileLocalStorageServiceImpl fileLocalStorageService;

	@Autowired
	private RoomServiceImpl roomService;

	@GetMapping(value = "")
	public String services(
			@RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
			@RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model,
			@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current) {
		Paged<Room> roomPaged = roomService.listRooms(1, 20, searchText);
		Paged<ServiceHotel> services = hotelService.getServices(current, 6);

		Set<Room> rooms = new LinkedHashSet<>();

		if (model.containsAttribute("roomRamdom")) {
//            System.out.println("RAMDOM: "+ model.getAttribute("roomRamdom").toString());
		}

		for (int i = 0; i < roomPaged.getPage().getContent().size(); i++) {
			Random rand = new Random();
			Room room = roomPaged.getPage().getContent().get(rand.nextInt(roomPaged.getPage().getContent().size()));

			if (!rooms.contains(room)) {
				room.setImage(fileLocalStorageService.buildUrl(room.getImage()));
				Set<RoomImages> roomImages = room.getRoomImages();
				for (RoomImages r : roomImages) {
					r.setFilePath(fileLocalStorageService.buildUrl(r.getFilePath()));
				}
				rooms.add(room);
			}
			if (rooms.size() == 4) {
				break;
			}
		}

		model.addAttribute("roomRamdom", rooms);
		model.addAttribute("services", services);
		return "atoli/elements/services";
	}

	@GetMapping(value = "/{id}")
	public String detail(@PathVariable Long id, Model model, RedirectAttributes redirectAttributes) {
		ServiceHotel service = hotelService.findById(id);
		if (service == null) {
			return "redirect:/admin/services";
		}

		Paged<ServiceHotel> servicePaged = hotelService.getServices(1, 6);

		model.addAttribute("service", service);
		model.addAttribute("serviceRandoms", servicePaged);

		return "atoli/elements/service-details";
	}
}
