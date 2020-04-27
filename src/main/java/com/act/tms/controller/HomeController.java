package com.act.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "welcome";
    }
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model, String error, String logout) {
        return "login";
    }
    
    @RequestMapping(value = {
        "/welcome"
    }, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }
}