package com.ea.redsea.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ea.redsea.domain.BookHotel;
import com.ea.redsea.domain.Hotel;

@Controller
@RequestMapping({ "/user" })
public class UserController {

//	@Autowired
//	HotelService hotelservice;
//	
	@RequestMapping({ "" })
	public String User(Model model) {

		// bring the users session
		model.addAttribute("member", "redae");
		return "user";
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
		return "listHotel";
	}

	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String getAddBookForm(Model model) {
		List<String> roomtype = new ArrayList<>();
		roomtype.add("1bed room");
		roomtype.add("2bed room");
		model.addAttribute("eList", roomtype);

		return "reservation";
	}

	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String AddBookFormProcess(@Valid Model model, BookHotel bhotel, BindingResult result,RedirectAttributes rm) {
		System.out.println(bhotel.getRoomtype());
		System.out.println(bhotel.getTodate());
		System.out.println(bhotel.getFromdate());
		
		rm.addFlashAttribute("bhotel", "bhotel");
		if(result.hasErrors())
		return "reservation";
		/// save reservation for the user in database
		return "redirect:/user/success";
	}
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String GetSuccess( BookHotel bhotel) {
		
		System.out.println(bhotel.getRoomtype());
		System.out.println(bhotel.getTodate());
		System.out.println(bhotel.getFromdate());
		
		return "confirmation";
	}

}