package com.galosoft.encuentralo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.galosoft.encuentralo.dao.UserDao;
import com.galosoft.encuentralo.entities.User;
import com.galosoft.encuentralo.services.SecurityService;

@Controller
public class LoginController {
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	private SecurityService securityService;
	
	@RequestMapping("/showReg")
	public String showRegistrationPage() {
		return "login/registerUser";
	}
	
	@RequestMapping(value="/registerUser", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") User user) {
		
		user.setPassword(encoder.encode(user.getPassword()));
		
		userDao.save(user);
		return "login/login";
	}
	
	@RequestMapping("/showLogin")
	public String showLoginPage() {
		return "login/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, 
			            @RequestParam("password") String password, ModelMap modelMap) {
		
		boolean loginResponse = securityService.login(email, password);
		
		
		if(loginResponse) {
			return "/admin";
		} else {
			modelMap.addAttribute("msg", "email or password wrong, please try again");
		}
		return "login/login";
		
	}
	
	
}
