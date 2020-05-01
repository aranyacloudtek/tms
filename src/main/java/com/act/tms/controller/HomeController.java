package com.act.tms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.act.tms.model.Users;
import com.act.tms.service.SecurityService;
import com.act.tms.service.UserService;
import com.act.tms.validator.UserValidator;



@Controller
public class HomeController {
	
	 @Autowired
     private UserService userService;
	
		
	 @Autowired
	 private SecurityService securityService;

	 @Autowired
	    private UserValidator userValidator;

	    @GetMapping("/registration")
	    public String registration(Model model) {
	        model.addAttribute("userForm", new Users());

	        return "registration";
	    }

	    @PostMapping("/registration")
	    public String registration(@ModelAttribute("userForm") Users userForm, BindingResult bindingResult) {
	        userValidator.validate(userForm, bindingResult);

	        if (bindingResult.hasErrors()) {
	            return "registration";
	        }

	        userService.save(userForm);

	        securityService.autoLogin(userForm.getAdid(), userForm.getPasswordConfirm());

	        return "redirect:/welcome";
	    }

	
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