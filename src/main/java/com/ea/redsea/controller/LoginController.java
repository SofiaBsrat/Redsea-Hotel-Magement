package com.ea.redsea.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ea.redsea.domain.Member;
import com.ea.redsea.domain.UserCredentials;
import com.ea.redsea.service.UserCredentialsService;

@Controller

public class LoginController {
	
	@Autowired
	UserCredentialsService  userCredentialsService ;
	
	@RequestMapping({ "/login" })
	public String login(Model model) {

		
		return "login";
	}
	@RequestMapping(value={"/login"}, method = RequestMethod.POST)
	public String postlogin(UserCredentials usercr,HttpSession session) {
		
     List<UserCredentials> credentials=userCredentialsService.findAll();
     
     for(int i=0;i<credentials.size();i++) {
    	 if(credentials.get(i).getUsername().equals(usercr.getUsername()) && credentials.get(i).getPassword().equals(usercr.getPassword())) {
    		 Member user=credentials.get(i).getMember();
    		 
    		 session.setAttribute("currentuser", user);
    		 for(int j=0;j<credentials.get(i).getAuthority().size();j++) {
    			 if(credentials.get(i).getAuthority().get(j).getAuthority().equals("ROLE_USER")) 
    			 
    				 return "redirect:/user";
   				 
    			 else 
    				 return "redirect:/admin";
    			 
        	 }
    	    	 
    			 
    		 }
    		 
    	 }
	return "redirect:/login";
     }
		
	@RequestMapping({ "/signup" })
	public String signup(Model model,HttpSession session) {
     
		 session.setAttribute("currentuser", null);
		return "signup";
	}

	


}
