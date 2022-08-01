package com.hotel.booking.controllers.frontend;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.CommentRoom;
import com.hotel.booking.entities.Room;
import com.hotel.booking.entities.RoomImages;
import com.hotel.booking.services.impl.CommentRoomServiceImpl;
import com.hotel.booking.services.impl.FileLocalStorageServiceImpl;
import com.hotel.booking.services.impl.RoomServiceImpl;
import com.hotel.booking.utils.pagination.Paged;

@Controller
@RequestMapping("/rooms")
public class RoomController {

	@Autowired
	private RoomServiceImpl roomService;

	@Autowired
	private FileLocalStorageServiceImpl fileLocalStorageService;

	@Autowired
	private CommentRoomServiceImpl commentService;

	@Value("${app.page.room.size}")
	int pageSize;

	@GetMapping(value = "")
	public String room(
			@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current
			/*
			 * , @RequestParam(value = "pageSize", required = false, defaultValue =
			 * JsonStructure.Pagination.PAGE_SIZE) int pageSize
			 */, @RequestParam(value = "searchText", required = false, defaultValue = "") String searchText,
			Model model) {
		Paged<Room> roomPaged = roomService.listRooms(current, pageSize, searchText);

		List<Room> rooms = roomPaged.getPage().getContent();
		for (Room r : rooms) {
			r.setImage(fileLocalStorageService.buildUrl(r.getImage()));
			Set<RoomImages> roomImages = r.getRoomImages();
			for (RoomImages i : roomImages) {
				i.setFilePath(fileLocalStorageService.buildUrl(i.getFilePath()));
			}
		}
		model.addAttribute("roomAll", roomPaged.getPage().getContent());
		int totalPages = roomPaged.getPage().getTotalPages();

		if (totalPages > 0) {
			List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages).boxed().collect(Collectors.toList());
			pageNumbers.add(pageNumbers.size() + 1);
			model.addAttribute("pageNumbers", pageNumbers);
		}
		model.addAttribute("totalPages", roomPaged.getPage().getTotalPages());
		model.addAttribute("totalItems", roomPaged.getPage().getTotalElements());
		model.addAttribute("currentPage", current);
		model.addAttribute("roomPaged", roomPaged);
		return "atoli/elements/room";
	}

	@GetMapping(value = "/{id}")
	public String roomDetail(@PathVariable Long id, Model model) {
		Room room = roomService.findRoomById(id);
		if (room == null) {
			return "atoli/elements/404";
		}
		for (RoomImages i : room.getRoomImages()) {
			i.setFilePath(fileLocalStorageService.buildUrl(i.getFilePath()));
		}
		Booking booking = new Booking();
		booking.setRoomType(room.getRoomType());
		booking.setCustomerId(room.getId());
		model.addAttribute("booking", booking);

//        list comment
		List<CommentRoom> roomComments = commentService.getCommentByRoomId(id);

		List<Room> related = roomService.findRoomLimit(id);

		model.addAttribute("room", room);
		CommentRoom c = new CommentRoom();
		c.setReplyId(room.getId());

		model.addAttribute("roomComments", roomComments);
		model.addAttribute("comment", c);

		model.addAttribute("commentRoom", c);

		model.addAttribute("related", related);
		return "atoli/elements/room-details";
	}

	@PostMapping(value = "/comment")
	public String roomDetail(@Valid @ModelAttribute("commentRoom") CommentRoom request, BindingResult result,
			Model model, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			/* redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ"); */
			model.addAttribute("commentRoom", request);
			return "atoli/elements/room-details";
		}
		try {
			commentService.create(request);
		} catch (Exception e) {
			return "atoli/elements/404";
		}

		return "redirect:/rooms/" + request.getReplyId();
	}
}
