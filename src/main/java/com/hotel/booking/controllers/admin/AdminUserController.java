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
import com.hotel.booking.entities.User;
import com.hotel.booking.services.impl.RoleServiceImpl;
import com.hotel.booking.services.impl.UserServiceImpl;
import com.hotel.booking.validates.user.CreateUserRequest;
import com.hotel.booking.validates.user.UpdateUserRequest;

@Controller
@RequestMapping("admin/users")
public class AdminUserController {

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private RoleServiceImpl roleService;

    @GetMapping(value = "")
    public String index(@RequestParam(value = "current", required = false, defaultValue = JsonStructure.Pagination.CURRENT) int current,
                        @RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
                        @RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model) {

        model.addAttribute("searchText", searchText);
        model.addAttribute("users", userService.listUsers(current, pageSize, searchText));

        return "admin/elements/users/index";
    }

    @GetMapping(value = "/create")
    public String create(Model model) {
        model.addAttribute("'roles'", roleService.findAll());
        model.addAttribute("user", new User());
        return "admin/elements/users/create";
    }

    @PostMapping(value = "/create")
    public String store(@Valid @ModelAttribute("user") CreateUserRequest user, BindingResult result,
                             RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");
            return "admin/elements/users/create";
        }

        User newUser = userService.createUser(user);
        if (newUser == null) {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
            return "admin/elements/users/edit";
        }

        redirectAttributes.addFlashAttribute("success", "Tạo người dùng thành công");

        return "redirect:/admin/users";
    }

    @GetMapping("{id}")
    public String edit(@PathVariable("id") long id, Model model) {
        User user = userService.findById(id);
        if (user == null) {
            return "admin/elements/errors/404";
        }
        model.addAttribute("user", user);

        return "admin/elements/users/edit";
    }

    @PostMapping("{id}")
    public String update(@PathVariable("id") long id, @Valid @ModelAttribute("user") UpdateUserRequest user,
                                BindingResult result, RedirectAttributes redirectAttributes) throws Exception {
        if (result.hasErrors()) {
            redirectAttributes.addFlashAttribute("error", "Dữ liệu không hợp lệ");

            return "admin/elements/users/edit";
        }

        User updateUser = userService.update(id, user);
        if (updateUser == null) {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
            return "admin/elements/users/edit";
        }

        redirectAttributes.addFlashAttribute("success", "Cập nhật thành công");

        return "redirect:/admin/users";
    }

    @GetMapping(value = "/delete/{id}")
    public String destroy(@PathVariable Long id,  RedirectAttributes redirectAttributes) {
        User user = userService.findById(id);
        if (user == null) {
            redirectAttributes.addFlashAttribute("error", "Có lỗi xảy ra");
        }

        userService.deleteUserById(id);
        redirectAttributes.addFlashAttribute("success", "Xóa người dùng thành công");

        return "redirect:/admin/users";
    }
}
