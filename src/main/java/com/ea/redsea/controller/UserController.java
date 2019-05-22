package com.ea.redsea.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ea.redsea.domain.BookHotel;
import com.ea.redsea.domain.Hotel;
import com.ea.redsea.domain.Member;
import com.ea.redsea.service.BookHotelService;
import com.ea.redsea.service.HotelService;
import com.ea.redsea.service.MemberService;
import com.ea.redsea.service.impl.HotelServiceImpl;

@Controller
@RequestMapping({ "/user" })
public class UserController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	HotelService hotelservice;
	
	@Autowired
	BookHotelService bookHotelServece;
	
	//curent user to be removed later for a session
		// Member member=memberService.findOne(1L);
		
		
		//current hotel
		Hotel hotel;
	
	@RequestMapping({ "" })
	public String User(Model model) {

		// bring the users session
		model.addAttribute("member", "redae");
		return "user";
	}

	@RequestMapping({ "/listHotel" })
	public String Hotellist(Model model) {
		 List<Hotel> hotels= hotelservice.findAll();
//		Hotel hotels = new Hotel();
//		hotels.setName("s");
//		hotels.setContact("sophias");
//		Hotel hotelss = new Hotel();
//		hotelss.setName("sophia");
//		hotelss.setContact("sophias");
//		List<Hotel> hotel = new ArrayList<>();
//		hotel.add(hotels);
//		hotel.add(hotelss);
		model.addAttribute("hotellist", hotels);
		return "listHotel";
	}

	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String getAddBookForm(@RequestParam("id") Long id,Model model) {
		System.out.println(id);
		 hotel=hotelservice.findOne(id);
		List<String> roomtype = new ArrayList<>();
		roomtype.add("1bed room");
		roomtype.add("2bed room");
		model.addAttribute("eList", roomtype);
        model.addAttribute("hotel",hotel);
       
		return "reservation";
	}

	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String AddBookFormProcess(@Valid Model model, BookHotel bhotel, BindingResult result,RedirectAttributes rm) {
		 Member member=memberService.findOne(1L);
		System.out.println(bhotel.getRoomtype());
		System.out.println(bhotel.getTodate());
		System.out.println(bhotel.getFromdate());
		bhotel.setHotel(hotel);
		bhotel.setMember(member);
		//bookHotelServece.save(bhotel);
		
		//to be send to RabbitMQ
		BookHotel hotel=new BookHotel();
		hotel.setRoomtype("Hamme and sophia");
		sendMessage(bhotel);
		
		
		if(result.hasErrors())
		return "reservation";
		/// save reservation for the user in database
		
		return "redirect:/user/success";
	}
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String GetSuccess( ) {

		
		
		return "confirmation";
	}
	public void sendMessage(BookHotel hotel) {

		
		
		ApplicationContext context = new GenericXmlApplicationContext("classpath:context/order-app-context.xml");
		
		if("Marriott Hotel".equals(hotel.getHotel().getName())) {
			// Publish to "direct" exchange on order.store == orderDirectQueue
	        RabbitTemplate marriothotelTemplate =  context.getBean("hotelMarriottTemplate",RabbitTemplate.class);
	    	HotelService marriotthotelService = new HotelServiceImpl();
	    	marriotthotelService.publish(marriothotelTemplate,hotel);
	    	
	    	System.out.print("************* Kazoo & Water Balloon sent to Order Store Queue  on orderDirect Exchange*********************::   ");
	        System.out.println();
	        System.out.println();
		}
		
		else if("Keren Hotel".equals(hotel.getHotel().getName())) {
			
			// Publish to "direct" exchange on order.online == orderDirectQueue
		       RabbitTemplate kerenHotelTemplate =  context.getBean("hotelKerenTemplate",RabbitTemplate.class);
		       HotelService kerenhotelservice = new HotelServiceImpl();
		       kerenhotelservice.publish(kerenHotelTemplate,hotel);


		        System.out.print("************* Ski & Skates sent to Order Online Queue  on orderDirect Exchange*********************::   ");
		           System.out.println();
			
		}
    	
    

     	
	}

}