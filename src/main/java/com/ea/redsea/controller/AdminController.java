package com.ea.redsea.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ea.redsea.domain.BookHotel;
import com.ea.redsea.domain.Hotel;


//@Autowired
//BookHotelService   bookhotellist
@Controller
@RequestMapping({ "/admin" })
public class AdminController {
	
	@RequestMapping({ "" })
	public String User(Model model) {

		// bring the users session
		model.addAttribute("member", "redae");
		return "admin";
	}

	@RequestMapping({ "/listHotel" })
	public String Hotellist(Model model) {
		// List<Hotel> hotels= hotelservice.findAll();
		Hotel hotels = new Hotel();
		hotels.setName("s");
		hotels.setContact("sophias");
		Hotel hotelss = new Hotel();
		hotelss.setName("sophia");
		hotelss.setContact("sophias");
		List<Hotel> hotel = new ArrayList<>();
		hotel.add(hotels);
		hotel.add(hotelss);
		model.addAttribute("hotellist", hotel);
		return "adminlistHotel";
	}
	

	@RequestMapping({ "/addHotel" })
	public String addHote(Model model) {


		return "addHotel";
	}

	@RequestMapping(value = "/addHotel", method = RequestMethod.POST)
	public String AddBookFormProcess(@Valid Model model, Hotel hotel, BindingResult result,RedirectAttributes rm) {
		System.out.println(hotel.getName());
		System.out.println(hotel.getRating());
		System.out.println(hotel.getContact());
		
		
		if(result.hasErrors())
		return "addHotel";
		/// save reservation for the user in database
		return "redirect:/admin/success";
	}
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String GetSuccess( ) {
		
		
		
		return "success";
	}
	@RequestMapping(value = "/booked", method = RequestMethod.GET)
	public String BookedHotellist(Model model) {
		// List<BookHotel> hotels=bookhotellist.findAll();
		// it should be Bookedhotel list 
		BookHotel hotels = new BookHotel();
		hotels.setRoomtype("single");
		BookHotel hotelss = new BookHotel();
		hotels.setRoomtype("double");
		
		
		List<BookHotel> hotel = new ArrayList<>();
		hotel.add(hotels);
		hotel.add(hotelss);
		model.addAttribute("hotellist", hotel);
		return "bookedHotellist";
		/// save reservation for the user in database
		
	}
	
}
