package com.hotel.booking.controllers.frontend;

import com.hotel.booking.constants.JsonStructure;
import com.hotel.booking.entities.Blog;
import com.hotel.booking.entities.Customer;
import com.hotel.booking.entities.Room;
import com.hotel.booking.entities.RoomImages;
import com.hotel.booking.entities.ServiceHotel;
import com.hotel.booking.services.impl.BlogServiceImpl;
import com.hotel.booking.services.impl.FileLocalStorageServiceImpl;
import com.hotel.booking.services.impl.HotelServiceImpl;
import com.hotel.booking.services.impl.RoomServiceImpl;
import com.hotel.booking.utils.pagination.Paged;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.LinkedHashSet;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired
    private FileLocalStorageServiceImpl fileLocalStorageService;

    @Autowired
    private RoomServiceImpl roomService;

    @Autowired
    private BlogServiceImpl blogService;

    @Autowired
    private HotelServiceImpl hotelService;

    @GetMapping(value="/")
    public String home(
            @RequestParam(value = "pageSize", required = false, defaultValue = JsonStructure.Pagination.PAGE_SIZE) int pageSize,
            @RequestParam(value = "searchText", required = false, defaultValue = "") String searchText, Model model, HttpSession session) {
    	Customer customer = (Customer) session.getAttribute("customer");
    	if(customer == null) {
    		session.setAttribute("customer", null);    		
    	}
        Paged<Room> roomPaged = roomService.listRooms(1, 20, searchText);
        Paged<ServiceHotel> services = hotelService.getServices(1, 4);
        Set<Room> rooms = new LinkedHashSet<>();

        for (int i = 0; i < roomPaged.getPage().getContent().size(); i++) {
            Random rand = new Random();
            Room room = roomPaged.getPage().getContent().get(rand.nextInt(roomPaged.getPage().getContent().size()));

            if(!rooms.contains(room)){
                room.setImage(fileLocalStorageService.buildUrl(room.getImage()));
                Set<RoomImages> roomImages = room.getRoomImages();
                for (RoomImages r : roomImages){
                    r.setFilePath(fileLocalStorageService.buildUrl(r.getFilePath()));
                }
                rooms.add(room);
            }
            if (rooms.size() == 4 ){
                break;
            }
        }

        Paged<Blog> blogs = blogService.getBlogs(1, 3, "");

        model.addAttribute("roomRamdom", rooms);
        model.addAttribute("blogs", blogs);
        model.addAttribute("services", services);

        return "atoli/elements/home";
    }

    @GetMapping(value="/404")
    public String notFound(Model model) {
        return "atoli/elements/404";
    }

    @GetMapping(value="/about")
    public String about(Model model) {
        return "atoli/elements/about";
    }

}
