package com.hotel.booking.controllers.frontend;

import java.io.IOException;
import java.time.Period;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.booking.entities.Booking;
import com.hotel.booking.entities.Customer;
import com.hotel.booking.entities.Room;
import com.hotel.booking.services.EmailService;
import com.hotel.booking.services.impl.BookingServiceImpl;
import com.hotel.booking.services.impl.CustomerServiceImpl;
import com.hotel.booking.services.impl.RoomServiceImpl;
import com.hotel.booking.validates.booking.BookingRequest;

@Controller
@RequestMapping("/booking-detail")
public class BookingDetailController {
	@Autowired
	private BookingServiceImpl bookingService;

	@Autowired
	private EmailService emailService;

	@Autowired
	private RoomServiceImpl roomService;

	@Autowired
	private CustomerServiceImpl customerService;

	@PostMapping
	public String booking(Model model, @Valid @ModelAttribute("booking") BookingRequest request, BindingResult result,
			RedirectAttributes redirectAttributes, HttpSession session) throws IOException, MessagingException {
		Booking booking = new Booking();
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
			redirectAttributes.addFlashAttribute("booking", request);
			return "redirect:/rooms/" + request.getRoomId();
		}

		try {
			List<Room> rooms = roomService.checkRoom(request.getRoomId(), request.getDateCheckin(),
					request.getDateCheckout());
			if (rooms.size() == 0) {
				redirectAttributes.addFlashAttribute("error", "Ngày này đã có người đặt phòng ");
				redirectAttributes.addAttribute("booking", request);
				return "redirect:/rooms/" + request.getRoomId();
			}

			booking = new Booking();

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

			double price = (diff + 1) * rooms.get(0).getPrice();
			booking.setPrice(price);

			booking.setNumberOfRoom(request.getNumberOfRoom());

			if (booking.getRoomId() == null) {
				booking.setRoomId(rooms.get(0).getId());
			}
			booking.setPayment("Chưa thanh toán");
			booking.setStatus("Chưa nhận phòng");

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
				customer = bookingService.createBooking(booking, customer);
			}
			session.setAttribute("customer", customer);
//			model.addAttribute("message", "Đặt phòng thành công");
//			return "atoli/elements/room";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
			model.addAttribute("booking", request);
			return "redirect:/rooms/" + request.getRoomId();
		}

		try {
//			MailParamDto mailParamDto = MailParamDtoUtil.mailParamDto(booking.getName(), booking.getEmail(),
//					"http://localhost:8080", "abcd");

//			emailService.sendMail(mailParamDto);
			model.addAttribute("message", "Đặt phòng thành công");
			return "redirect:/booking/success";
		} catch (Exception e) {
			model.addAttribute("message", "Đặt phòng thành công nhưng chưa gửi mail");
			return "redirect:/rooms/" + request.getRoomId();
		}

	}

	// validate
	public boolean isValid(Date in, Date out) {
		return in.equals(out) ? true : out.after(in);
	}
}
