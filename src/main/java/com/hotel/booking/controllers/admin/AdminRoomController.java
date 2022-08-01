package com.hotel.booking.controllers.admin;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.Room;
import com.hotel.booking.entities.RoomDetail;
import com.hotel.booking.entities.RoomImages;
import com.hotel.booking.services.RoomService;
import com.hotel.booking.services.impl.FileLocalStorageServiceImpl;
import com.hotel.booking.utils.pagination.Paged;
import com.hotel.booking.validates.room.RoomRequest;

@Controller
@RequestMapping("admin/rooms")
public class AdminRoomController {

	@Autowired
	private RoomService roomService;

	@Autowired
	private FileLocalStorageServiceImpl fileLocalStorageService;

	@GetMapping(value = "")
	public String index(
			@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current,
			@RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
			@RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {

		model.addAttribute("searchText", searchText);

		Paged<Room> paged = roomService.listRooms(current, 3, searchText);

		List<Room> rooms = paged.getPage().getContent();

		for (Room r : rooms) {
			r.setImage(fileLocalStorageService.buildUrl(r.getImage()));
			Set<RoomImages> roomImages = r.getRoomImages();
			for (RoomImages i : roomImages) {
				i.setFilePath(fileLocalStorageService.buildUrl(i.getFilePath()));
			}
		}
		model.addAttribute("rooms", paged);
		/*
		 * int totalPages = roomPaged.getPage().getTotalPages();
		 * 
		 * if (totalPages > 0) { List<Integer> pageNumbers = IntStream.rangeClosed(1,
		 * totalPages) .boxed() .collect(Collectors.toList());
		 * model.addAttribute("pageNumbers", pageNumbers); }
		 */

		return "admin/elements/room/index";
	}

	@GetMapping(value = "/create")
	public String create(Model model) {
		model.addAttribute("room", new RoomRequest());
		return "admin/elements/room/create";
	}

	@PostMapping(value = "/create")
	public String store(@Valid @ModelAttribute("room") RoomRequest request, BindingResult result,
			RedirectAttributes redirectAttributes) throws IOException {
		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
			return "admin/elements/room/create";
		}

		Room room = new Room();
//        save image
		if (request.getImage().getSize() > 0) {
			String imageLink = fileLocalStorageService.saveFile(request.getImage(), "rooms");
			room.setImage(imageLink);
		}

//        save imageSlider
		Set<RoomImages> roomImages = new LinkedHashSet<>();
		if (request.getImageSlider().size() > 0) {
			RoomImages image;
			for (MultipartFile model : request.getImageSlider()) {
				if (model.getSize() > 0) {
					image = new RoomImages();
					String imageLink = fileLocalStorageService.saveFile(model, "rooms");
					image.setName(imageLink.substring(imageLink.lastIndexOf("/") + 1));
					image.setFilePath(imageLink);
					roomImages.add(image);
					image.setRoom(room);
				}
			}

		}
		Set<RoomDetail> roomDetails = new LinkedHashSet<>();
		RoomDetail roomDetail = new RoomDetail();
		roomDetail.setPrice(request.getPrice());
		roomDetail.setRoomType(request.getTypeRoom());
		roomDetail.setRoom(room);
		roomDetails.add(roomDetail);
		room.setNumberAmount(request.getNumberAmount());
		room.setRoomSize(request.getRoomSize() + "m2");
		room.setLocation(request.getLocation());
		room.setBedSize(request.getBedSize());
		room.setRoomDetails(roomDetails);
		room.setRoomImages(roomImages);
		room.setName(request.getTitle());
		room.setUnit(request.getUnit());
		room.setDescription(request.getDescription());

//        Room newRoom = roomService.create(request);
//        if (newRoom == null) {
//            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
//            return "admin/elements/users/edit";
//        }
		roomService.create(room);

		redirectAttributes.addFlashAttribute("success", "Tạo người dùng thành công");

		return "redirect:/admin/rooms";
	}

	@PostMapping(value = "/edit")
	public String update(@Valid @ModelAttribute("room") RoomRequest request, BindingResult result,
			RedirectAttributes redirectAttributes) throws IOException {
		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
			return "admin/elements/room/create";
		}

		Room room = roomService.findRoomById(request.getId());

//        save image

		if (request.getImage().getSize() > 0) {
			String imageLink = fileLocalStorageService.saveFile(request.getImage(), "rooms");
			room.setImage(imageLink);
		}

//        save imageSlider
		Set<RoomImages> roomImages = new LinkedHashSet<>();
		if (!request.getImageSlider().isEmpty()) {

			for (MultipartFile model : request.getImageSlider()) {
				if (model.getSize() > 0) {
					RoomImages image = new RoomImages();
					String imageLink = fileLocalStorageService.saveFile(model, "rooms");
					image.setName(imageLink.substring(imageLink.lastIndexOf("/") + 1));
					image.setFilePath(imageLink);
					roomImages.add(image);
					image.setRoom(room);
				}
			}
			room.setRoomImages(roomImages);

		}
		Set<RoomDetail> roomDetails = new LinkedHashSet<>();
		if (request.getPrice() != 0) {
			room.setPrice(request.getPrice());
		}
		room.setNumberAmount(request.getNumberAmount());
		room.setRoomSize(request.getRoomSize() + "m2");
		room.setLocation(request.getLocation());
		room.setBedSize(request.getBedSize());
		room.setRoomDetails(roomDetails);
		room.setRoomImages(roomImages);
		room.setName(request.getTitle());
		room.setUnit(request.getUnit());
		room.setDescription(request.getDescription());

		roomService.create(room);

		redirectAttributes.addFlashAttribute("success", "Cập nhật phòng thành công");

		return "redirect:/admin/rooms";
	}

	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") long id, Model model) throws MalformedURLException, FileNotFoundException {
		Room room = roomService.findRoomById(id);
		if (room == null) {
			return "admin/elements/errors/404";
		}
		RoomRequest roomRequest = new RoomRequest();
		roomRequest.setId(room.getId());
		roomRequest.setTitle(room.getName());
		roomRequest.setNumberAmount(room.getNumberAmount());
		if (room.getRoomSize() != null) {
			roomRequest.setRoomSize(Integer.parseInt(room.getRoomSize().substring(0, room.getRoomSize().indexOf("m"))));
		} else {
			roomRequest.setRoomSize(0);
		}
		roomRequest.setPrice(room.getPrice());
		roomRequest.setNumberAmount(room.getNumberAmount());
		roomRequest.setNumberAmount(room.getNumberAmount());
		roomRequest.setLocation(room.getLocation());
		roomRequest.setBedSize(room.getBedSize());
		roomRequest.setRoomDetails(room.getRoomDetails());
		roomRequest.setRoomImages(room.getRoomImages());
		roomRequest.setUnit(room.getUnit());
		roomRequest.setDescription(room.getDescription());
		roomRequest.setSubDescription(room.getSubDescription());
		model.addAttribute("room", roomRequest);
		return "admin/elements/room/edit";
	}

	@GetMapping(value = "/delete/{id}")
	public String destroy(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		Room booking = roomService.findById(id);
		if (booking == null) {
			redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
		}

		roomService.deleteById(id);
		redirectAttributes.addFlashAttribute("success", "Xóa phòng thành công");

		return "redirect:/admin/rooms";
	}

//    @PostMapping("{id}")
//    public String update(@PathVariable("id") long id, @Valid @ModelAttribute("user") UpdateUserRequest user,
//                                BindingResult result, RedirectAttributes redirectAttributes) throws Exception {
//        if (result.hasErrors()) {
//            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
//
//            return "admin/elements/users/edit";
//        }
//
//        User updateUser = userService.update(id, user);
//        if (updateUser == null) {
//            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
//            return "admin/elements/users/edit";
//        }
//
//        redirectAttributes.addFlashAttribute("success", "Cập nhật thành công");
//
//        return "redirect:/admin/users";
//    }
//
//    @GetMapping(value = "/delete/{id}")
//    public String destroy(@PathVariable Long id,  RedirectAttributes redirectAttributes) {
//        User user = userService.findById(id);
//        if (user == null) {
//            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
//        }
//
//        userService.deleteUserById(id);
//        redirectAttributes.addFlashAttribute("success", "Xóa người dùng thành công");
//
//        return "redirect:/admin/users";
//    }
}
