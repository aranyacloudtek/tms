package com.act.tms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.act.tms.service.SecurityService;
import com.act.tms.service.UserService;


@Controller
public class HomeController {
	
	 @Autowired
     private UserService userService;
	
		
	 @Autowired
	 private SecurityService securityService;

	
	@GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({"/", "/welcome"})
    public String welcome(Model model) {
        return "welcome";
    }
    
//    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
//    public String addUser(Model model, String error, String logout) {
//        return "addUser";
//    }
//
//    
//    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
//    public ModelAndView welcome() {
//    	ModelAndView model = new ModelAndView("/welcome");
////    	model.addObject("m", "Testing");
////    	model.addObject("user", u);
//    	return model;
//    }
}