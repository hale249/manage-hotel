
package com.hotel.booking.controllers.admin;

import java.time.Period;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Random;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Customer;
import com.hotel.booking.entities.Room;
import com.hotel.booking.services.EmailService;
import com.hotel.booking.services.impl.BookingServiceImpl;
import com.hotel.booking.services.impl.CustomerServiceImpl;
import com.hotel.booking.services.impl.RoomServiceImpl;

@Controller
@RequestMapping("admin/booking")
public class AdminBookingController {

	@Autowired
	private BookingServiceImpl bookingService;

	@Autowired
	private RoomServiceImpl roomService;

	@Autowired
	private EmailService emailService;

	@Autowired
	private CustomerServiceImpl customerService;

	@PostMapping("/create")
	public String store(Model model, @Valid @ModelAttribute("booking") Booking request, BindingResult result,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors() || !isValid(request.getDateCheckin(), request.getDateCheckout())
				|| isValid(request.getDateCheckin(), new Date())) {
			if (!isValid(request.getDateCheckin(), request.getDateCheckout())) {
				redirectAttributes.addFlashAttribute("error", "Ngày bắt đầu phải nhỏ hơn ngày kết thúc");
			} else if (isValid(request.getDateCheckin(), new Date())) {
				redirectAttributes.addFlashAttribute("error",
						"Ngày bắt đầu và ngày kết thúc phải lớn hơn ngày hiện tại");
			} else {
				redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
			}
			return "admin/elements/room/create";
		}

		Booking booking = new Booking();
		try {
			List<Room> rooms = roomService.findAllRoom(request.getRoomType(), request.getDateCheckin(),
					request.getDateCheckout());
			if (rooms.size() == 0) {
				redirectAttributes.addFlashAttribute("error", "Không có phòng trống loại " + request.getRoomType());
				model.addAttribute("booking", request);
				return "redirect:/admin/booking/create";
			}

			Random random = new Random();

			int index = random.nextInt(rooms.size());

			Room r = rooms.get(index);

			booking.setName(request.getName());
			booking.setEmail(request.getEmail());
			booking.setDateCheckin(request.getDateCheckin());
			booking.setDateCheckout(request.getDateCheckout());
			booking.setRoomType(request.getRoomType());

			Period period = Period.between(
					booking.getDateCheckin().toInstant().atZone(ZoneId.systemDefault()).toLocalDate(),
					booking.getDateCheckout().toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
			double diff = Math.abs(period.getDays());

			booking.setNumberOfPerson(request.getNumberOfPerson());

			double price = (diff + 1) * r.getPrice();
			booking.setPrice(price);

			booking.setNumberOfRoom(request.getNumberOfRoom());

			booking.setRoomId(r.getId());
			booking.setPayment(request.getPayment());
			booking.setStatus(request.getStatus());

			// add to Customer
			Customer customer = new Customer();
			customer.setTotalPrice(booking.getPrice());
			customer.setEmail(booking.getEmail());
			customer.setName(booking.getName());
			if (customer.getPhoneNumber() == null || customer.getPhoneNumber() == "") {
				customer.setPhoneNumber("0");
			}
			Customer customerExists = customerService.findByEmail(booking.getEmail());

			if (Objects.nonNull(customerExists)) {
				customer.setId(customerExists.getId());
				bookingService.create(booking);
			} else {
				bookingService.createBooking(booking, customer);
			}
			redirectAttributes.addFlashAttribute("success", "Tạo booking thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
			model.addAttribute("booking", request);
			return "redirect:/admin/booking/create";
		}

//		MailParamDto mailParamDto = MailParamDtoUtil.mailParamDto(booking.getName(), booking.getEmail(),
//				"http://localhost:8080", "abcd");
//
//		try {
//			emailService.sendMail(mailParamDto);
//		} catch (Exception e) {
//			redirectAttributes.addFlashAttribute("error", "Đã booking nhung chưa gửi được mail Email");
//			model.addAttribute("booking", request);
//			return "redirect:/admin/booking";
//		}

		return "redirect:/admin/booking";
	}

	@GetMapping(value = "")
	public String index(
			@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current,
			@RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
			@RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {

		model.addAttribute("searchText", searchText);
		try {
			model.addAttribute("bookings", bookingService.listBookings(current, pageSize, searchText));
		} catch (Exception e) {
			model.addAttribute("error", "Lỗi lấy dữ liệu");
		}

		return "admin/elements/booking/index";
	}

	@GetMapping(value = "/create")
	public String create(Model model) {
		model.addAttribute("booking", new Booking());
		return "admin/elements/booking/create";
	}

	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") long id, Model model) {
		try {
			Booking booking = bookingService.findById(id);
			if (booking.getCustomerId() == null) {
				return "admin/elements/errors/404";
			}
			model.addAttribute("booking", booking);
			System.out.println(booking.getDateCheckin());

			return "admin/elements/booking/edit";
		} catch (Exception e) {
			return "admin/elements/errors/404";
		}
	}

	@PostMapping("{id}")
	public String update(@PathVariable("id") long id, @Valid @ModelAttribute("user") Booking booking,
			BindingResult result, RedirectAttributes redirectAttributes) throws Exception {
		if (result.hasErrors() || !isValid(booking.getDateCheckin(), booking.getDateCheckout())
				|| isValid(booking.getDateCheckin(), new Date())) {
			if (!isValid(booking.getDateCheckin(), booking.getDateCheckout())) {
				redirectAttributes.addFlashAttribute("error", "Ngày bắt đầu phải nhỏ hơn ngày kết thúc");
			} else if (isValid(booking.getDateCheckin(), new Date())) {
				redirectAttributes.addFlashAttribute("error",
						"Ngày bắt đầu và ngày kết thúc phải lớn hơn ngày hiện tại");
			} else {
				redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
			}
			return "redirect:/admin/booking/edit/" + booking.getId();
		}

		Room r = roomService.findById(booking.getRoomId());

		Period period = Period.between(
				booking.getDateCheckin().toInstant().atZone(ZoneId.systemDefault()).toLocalDate(),
				booking.getDateCheckout().toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
		double diff = Math.abs(period.getDays());

		booking.setNumberOfPerson(booking.getNumberOfPerson());

		double price = (diff + 1) * r.getPrice();
		booking.setPrice(price);

		bookingService.update(id, booking);

		redirectAttributes.addFlashAttribute("success", "Cập nhật thành công");

		return "redirect:/admin/booking";
	}

	@GetMapping(value = "/delete/{id}")
	public String destroy(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		Booking booking = bookingService.findById(id);
		if (booking == null) {
			redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
		}

		bookingService.deleteById(id);
		redirectAttributes.addFlashAttribute("success", "Xóa đặt phòng thành công");

		return "redirect:/admin/booking";
	}

	private boolean isValid(Date in, Date out) {
		return in.equals(out) ? true : out.after(in);
//		return out.after(in);
	}
}
