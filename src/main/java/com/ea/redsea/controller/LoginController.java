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

@Controller

public class LoginController {
	
	@RequestMapping({ "/login" })
	public String login(Model model) {

		
		return "login";
	}

	@RequestMapping({ "/signup" })
	public String signup(Model model) {

		
		return "signup";
	}

	


}
