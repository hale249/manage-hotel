package com.hotel.booking.controllers.admin;

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
import com.hotel.booking.entities.ServiceHotel;
import com.hotel.booking.services.HotelService;
import com.hotel.booking.services.impl.FileLocalStorageServiceImpl;
import com.hotel.booking.validates.service.ServiceRequest;

@Controller
@RequestMapping("admin/services")
public class AdminServiceController {
	@Autowired
	private HotelService hotelService;

	@Autowired
	private FileLocalStorageServiceImpl fileLocalStorageService;

	@GetMapping("")
	public String index(
			@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current,
			@RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
			@RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {

		model.addAttribute("searchText", searchText);
		model.addAttribute("services", hotelService.getServices(current, pageSize, searchText));

		return "admin/elements/service/index";
	}

	@GetMapping("/create")
	public String create(Model model) {
		model.addAttribute("service", new ServiceHotel());

		return "admin/elements/service/create";
	}

	@PostMapping("/create")
	public String store(@Valid @ModelAttribute("service") ServiceRequest request, BindingResult result,
			RedirectAttributes redirectAttributes) throws Exception {
		try {
			if (result.hasErrors()) {
				redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
				return "admin/elements/service/create";
			}

			String imageLink = fileLocalStorageService.saveFile(request.getImage(), "services");
			ServiceHotel data = new ServiceHotel();
			data.setTitle(request.getTitle());
			data.setIcon(request.getIcon());
			data.setSortDescription(request.getSortDescription());
			data.setContent(request.getContent());
			data.setStatus(request.isStatus());
			data.setImage(imageLink);
			ServiceHotel newService = hotelService.create(data);
			if (newService == null) {
				redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
				return "admin/elements/service/edit";
			}

			redirectAttributes.addFlashAttribute("success", "Tạo dịch vụ thành công");

			return "redirect:/admin/services";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
			return "admin/elements/service/create";
		}
	}

	@GetMapping("/{id}")
	public String edit(@PathVariable("id") long id, Model model) {
		ServiceHotel service = hotelService.findById(id);
		if (service == null) {
			return "admin/elements/errors/404";
		}
		model.addAttribute("service", service);

		return "admin/elements/service/edit";
	}

	@PostMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid @ModelAttribute("service") ServiceRequest request,
			BindingResult result, RedirectAttributes redirectAttributes) throws Exception {
		if (result.hasErrors()) {
			redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");

			return "admin/elements/service/edit";
		}

		try {
			String imageLink = "";
			if (request.getImage().getSize() > 0) {
				imageLink = fileLocalStorageService.saveFile(request.getImage(), "services");
			}

			ServiceHotel updateService = hotelService.update(id, request, imageLink);
			if (updateService == null) {
				redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
				return "admin/elements/service/edit";
			}

			redirectAttributes.addFlashAttribute("success", "Cập nhật thành công");
			return "redirect:/admin/services";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
			return "admin/elements/service/edit";
		}

	}

	@GetMapping("/delete/{id}")
	public String destroy(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		ServiceHotel service = hotelService.findById(id);
		if (service == null) {
			redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
		}

		hotelService.deleteById(id);
		redirectAttributes.addFlashAttribute("success", "Xóa dịch vụ thành công");

		return "redirect:/admin/services";
	}
}
